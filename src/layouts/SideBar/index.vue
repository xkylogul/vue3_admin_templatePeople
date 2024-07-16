<template>
    <el-row class="tac">
      <el-col :span="12">
        <h5 class="mb-2">Default colors</h5>
        <el-menu
          default-active="2"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
        >
          <el-sub-menu index="1">
            <template #title>
              <el-icon><location /></el-icon>
              <span>Navigator One</span>
            </template>
            <el-menu-item-group title="Group One">
              <el-menu-item index="1-1">aaa</el-menu-item>
              <el-menu-item index="1-2">bbb</el-menu-item>
            </el-menu-item-group>
            <el-menu-item-group title="Group Two">
              <el-menu-item index="1-3">ccc</el-menu-item>
            </el-menu-item-group>
            <el-sub-menu index="1-4">
              <template #title>item four</template>
              <el-menu-item index="1-4-1">ddd</el-menu-item>
            </el-sub-menu>
          </el-sub-menu>
          <el-menu-item index="2">
            <el-icon><document  /></el-icon>
            <span>Navigator Two1</span>
          </el-menu-item>
          <el-menu-item index="3" >
            <el-icon><document /></el-icon>
            <span>Navigator Three</span>
          </el-menu-item>
          <el-menu-item index="4">
            <el-icon><setting /></el-icon>
            <span>Navigator Four</span>
          </el-menu-item>
        </el-menu>
      </el-col>
      <el-col :span="12">
        <h5 class="mb-2">Custom colors</h5>
    
      </el-col>
    </el-row>
  </template>
  
  <script lang="ts" setup>
  const handleOpen = (key: string, keyPath: string[]) => {
    console.log(key, keyPath)
  }
  const handleClose = (key: string, keyPath: string[]) => {
    console.log(key, keyPath)
  }
  </script>
  <style lang="less" scoped>
  .test{
   background-color:pink;
   width:100%;
   height:100%;
  }
</style>
  