<template>
    <div>
     <!-- <template v-for="(item,index)  in menuList" :key="index">
    <span>{{ item.meta.title }}</span>
    <SubMenu v-if="'children' in item" :menuList="item.children"></SubMenu>
     </template> -->
          <el-menu
          default-active="2"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
        >
          <el-sub-menu index="1"  v-for="(item,index)  in menuList" :key="index">
            <template #title>
              <el-icon><location /></el-icon>
              <span>{{ item.meta.title }}</span>
              <!-- <SubMenu v-if="'children' in item" :menuList="item.children"></SubMenu> -->
            </template>
            <el-menu-item-group v-show="'children' in item"  v-for="(itemx,index)  in item.children" :key="index">
              <el-menu-item index="1-1">{{itemx.meta.title}}</el-menu-item>
            </el-menu-item-group>
            </el-sub-menu>
              </el-menu> 
          
     <!-- <div @click="test">测试数据</div>
      
     <div v-show="isShow">{{menuList}}</div> -->
    </div>
  </template>
  
  <script setup>
  import {ref} from 'vue'
 const props = defineProps({
    menuList:{
        type:Array,
        default:()=>[]
    }
 })
 const isShow = ref(false)
  const test =()=>{
    isShow.value =true
    console.log(props.menuList)
  }
  </script>
  
  <style lang="scss" scoped>
  
  </style>
  