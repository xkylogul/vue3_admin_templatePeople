<template>
    <div><SubMenu :menuList></SubMenu></div>
     <!-- <div>{{ dynamicRoutes }}</div> -->
</template>
<script setup lang="ts">
import SubMenu  from '@/layouts/SideBar/SubMenu.vue'
import {dynamicRoutes} from '@/router/dynamicRoutes'
const menuList = dynamicRoutes

</script>