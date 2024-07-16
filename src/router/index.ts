import { createRouter, createWebHistory } from 'vue-router'
//import HomeView from '@/views/HomeView.vue'
//import LoginView from '@/views/login/index.vue'
import type {RouteRecordRaw} from 'vue-router'
import { staticRoutes } from './constantRoutes'
import {dynamicRoutes} from './dynamicRoutes'

const router = createRouter({
  history: createWebHistory(),
  // routes: [
  //   {
  //     path:'/',
  //     redirect:'/login',
  //     component: LoginView
  //     },
  //     {
  //       path:'/login',
  //       name:'login',
     
  //       component: LoginView
  //     },
  //   {
  //     path: '/home',
  //     name: 'home',
  //     component: ()=>import('@/views/HomeView.vue')
  //   },
  //   {
  //     path: '/about',
  //     name: 'about',
  //     component: () => import('@/views/AboutView.vue')
  //   }
   
  // ],
  routes: [...staticRoutes,...dynamicRoutes] as RouteRecordRaw[],
  // 刷新时，滚动条位置还原
  scrollBehavior: () => ({ left: 0, top: 0 }),
})

export default router
