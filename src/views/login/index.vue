<template>
    <el-form
      ref="ruleFormRef"
      style="max-width: 600px"
      :model="ruleForm"
      status-icon
      :rules="rules"
      label-width="auto"
      class="demo-ruleForm"
    >
      <el-form-item label="密码" prop="password">
        <el-input v-model="ruleForm.password" type="password" autocomplete="off" />
      </el-form-item>
      <!-- <el-form-item label="Confirm" prop="checkPass">
        <el-input
          v-model="ruleForm.checkPass"
          type="password"
          autocomplete="off"
        />
      </el-form-item> -->
      <el-form-item label="账号" prop="username">
        <el-input v-model="ruleForm.username" />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="submitForm(ruleFormRef)">
          提交
        </el-button>
        <el-button @click="resetForm(ruleFormRef)">重置</el-button>
      </el-form-item>
    </el-form>
  </template>
  
  <script lang="ts" setup>
  import { reactive, ref } from 'vue'
  import type { FormInstance, FormRules } from 'element-plus'
  import { login }from '@/api/user'
  import { ElNotification } from 'element-plus'
  import { HOME_URL } from '@/config/config'
  import {useUserStore} from '@/store/modules/user'
import { useRouter, useRoute } from 'vue-router'
import {timeFix} from '@/utils/index'
  
  const ruleFormRef = ref<FormInstance>()
  const userStore = useUserStore()
  const router = useRouter()
  const route = useRoute()
  const checkAge = (rule: any, value: any, callback: any) => {
    if (!value) {
      return callback(new Error('Please input the age'))
    }
    setTimeout(() => {
      if (!Number.isInteger(value)) {
        callback(new Error('Please input digits'))
      } else {
        if (value < 18) {
          callback(new Error('Age must be greater than 18'))
        } else {
          callback()
        }
      }
    }, 1000)
  }
  
  const validatePass = (rule: any, value: any, callback: any) => {
    if (value === '') {
      callback(new Error('Please input the password'))
    }
  }
  const validatePass2 = (rule: any, value: any, callback: any) => {
    if (value === '') {
      callback(new Error('Please input the password again'))
    } else if (value !== ruleForm.password) {
      callback(new Error("Two inputs don't match!"))
    } else {
      callback()
    }
  }
  
  const ruleForm = reactive({
    password: '',
   // checkPass: '',
   username: '',
  })
  
  const rules = reactive<FormRules<typeof ruleForm>>({
    username: [{ validator: validatePass, trigger: 'blur' }],
   // checkPass: [{ validator: validatePass2, trigger: 'blur' }],
   password: [{ validator: checkAge, trigger: 'blur' }],
  })
  
  const submitForm = async (formEl: FormInstance | undefined) => {

    console.log('数据',formEl)
    try{ 
    const data = await login(ruleForm)
    userStore.setToken(data.data)
      router.replace((route.query.redirect as string) || HOME_URL)
      ElNotification({
        title: `hi,${timeFix()}!`,
        message: `欢迎回来`,
        type: 'success',
      })}finally{
    console.log('sss')
   }
    
    


   if (!formEl) return
    // formEl.validate((valid) => {
    //   if (valid) {
    //     login(ruleForm).then(res=>{
    //         console.log(res,'RES')
    //     }).catch(error=>console.log(error))

    //     console.log('submit!')
    //   } else {
    //     console.log('error submit!')
    //   }
    // })
  }
  
  const resetForm = (formEl: FormInstance | undefined) => {
    if (!formEl) return
    formEl.resetFields()
  }
  </script>
  