<template>
    <div class="layout-admin-wrapper">
        <div class="layout-container-veritial fixed">
            <div><SubMenu :menuList></SubMenu></div>
            <div class="layout-main" :class="{'is-collapse':collapse}">
                <!--头部-->
                <div class="layout-hrader fixed-header" :class="{'is-collapse':collapse}">
                    <!-- <div>1</div>
                    <div>2</div> -->
                </div>
                <div class="app-main-container">
                    <!--主体内容-->
                    <Main></Main>
                    <!-- <div>页脚</div> -->
                </div>
            </div>
        </div>
    </div>
  
     <!-- <div>{{ dynamicRoutes }}</div> -->
</template>
<script setup lang="ts">
import {ref} from 'vue'
import SubMenu  from '@/layouts/SideBar/SubMenu.vue'
import Main from '@/layouts/Main/index.vue'
import  {dynamicRoutes} from '@/router/dynamicRoutes'
const menuList:any = dynamicRoutes
const collapse = ref(false)
</script>
<style lang="less" scoped>
.mixin(fix-header){
position:fixed;
top:0;
right:0;
z-index:997;
}
.layout-admin-wrapper {
    position:relative;
    width:100%;
    height:100%;
    overflow:auto;
    .layout-container-veritial{
        &.fixed{
         display:flex;
         justify-content: flex-start;
        }
        .layout-main{
            flex:1
        }
    }

}
</style>