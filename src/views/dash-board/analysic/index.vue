<script setup lang="ts">
import {ref ,unref} from 'vue'
const testref = ref('iuu')
const btnBut = ()=>{
  testref.value = "xia"
  console.log(unref(testref))
}
</script>


<template>
    <el-row  justify="space-evenly">
      <el-col :span="6"><div class="grid-content ep-bg-purple" />12222222222222222222</el-col>
      <el-col :span="6"><div class="grid-content ep-bg-purple" />233333333333333</el-col>
      <el-col :span="6"><div class="grid-content ep-bg-purple" />3333333333333333</el-col>
      <el-col :span="6"><div class="grid-content ep-bg-purple" />43333333333333</el-col>
    </el-row>
    <div>
      <button @click="btnBut">按钮</button>
    </div>
  </template>
  
  <style>
  .el-row {
    margin-bottom: 20px;
  }
  .el-row:last-child {
    margin-bottom: 0;
  }
  .el-col {
    border-radius: 4px;
  }
  
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  </style>
  
