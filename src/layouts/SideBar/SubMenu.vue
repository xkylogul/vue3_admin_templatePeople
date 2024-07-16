<template>
  <!-- <el-radio-group v-model="isCollapse" style="margin-bottom: 20px">
    <el-radio-button :value="false">expand</el-radio-button>
    <el-radio-button :value="true">collapse</el-radio-button>
  </el-radio-group> -->
  <el-menu
    class="el-menu-vertical-demo"
    :collapse="isCollapse"
    :defaultActive="activeMenu"
    @open="handleOpen"
    @close="handleClose"
    :unique-opened="true"
    :router="true"
  >
    <el-sub-menu :index="emunItem.path" v-for="emunItem in menuList" :key="emunItem.path">
      <template #title>
        <!-- <el-icon><location /></el-icon> -->
        <el-icon>
        <component :is="emunItem.meta.icon"></component>
      </el-icon>
        <span>{{ emunItem?.meta.title }}</span>
      </template>
      <el-menu-item-group>
  
        <el-menu-item v-show =emunItem&&emunItem.children  :index="item.path" v-for="item in emunItem.children" :key="item.path">{{ item.meta.title }}</el-menu-item>
    
      </el-menu-item-group>
    </el-sub-menu>
 
  </el-menu>
</template>
<script lang="ts">
export default {
  name:"SubMenu"
}
</script>
<script lang="ts" setup>
import { ref ,computed} from 'vue'
import {useRoute} from 'vue-router'
const props = defineProps({
  menuList:{
    reuqire:true,
    default:()=>[]
  }
})
const route = useRoute()
const activeMenu = computed(() =>
      route.meta.activeMenu ? (route.meta.activeMenu as string) : route.path,
    )
const test =()=>{
  console.log(props.menuList,'menuList')
}
const isCollapse = ref(false)
const handleOpen = (key: string, keyPath: string[]) => {
  console.log(key, keyPath)
}
const handleClose = (key: string, keyPath: string[]) => {
  console.log(key, keyPath)
}
</script>

<style>
.el-menu-vertical-demo:not(.el-menu--collapse) {
  width: 200px;
  min-height: 400px;
}
</style>
