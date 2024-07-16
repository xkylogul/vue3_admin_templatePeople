<template>
<section class="app-mian-height">
    <router-view v-slot="{Component,route}" v-if="isShow">
        <Transition apper name="fade-transform" mode= "out-in">
            <component :is="Component" :key="route.path" ></component>
        </Transition>
    </router-view>
</section>


</template>
<script setup lang="ts">
import {nextTick, ref, watch } from 'vue'
const isShow = ref(true)
</script>
<style lang="less" scoped>
.app-mian-height{
    min-height:256px;

}
</style>