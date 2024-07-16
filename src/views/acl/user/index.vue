<script setup lang="ts">
import {useUserStore} from '@/store/modules/user'
import {useRouter} from 'vue-router'
const router = useRouter()
const useStore = useUserStore()
const getStoreToken = ()=>{
  console.log(useStore.testDa,'useStore',useStore.token)
}
const getlogOut=()=>{
  useStore.Logout()
  router.push({path:'/login'})
}

</script>

<template>
  <main>
  
<div>用户管理</div>
 <el-button type="success" @click="getStoreToken">Success</el-button>
 <el-button type="error" @click="getlogOut">登出</el-button>
  </main>
</template>
