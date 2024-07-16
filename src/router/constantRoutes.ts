import type {RouteRecordRaw} from 'vue-router'
import {HOME_URL,LOGIN_URL} from '@/config/config'
/**
 * @description 静态路由
 */
export const staticRoutes: RouteRecordRaw[] = [
    {
      path: LOGIN_URL,
      name: 'login',
     // redirect: LOGIN_URL,
      meta: {
        isHide: true,
      },
      component: () => import('@/views/login/index.vue'),
    },
    {
      path: '/404',
      name: '404',
      meta: {
        isHide: true,
      },
      component: () => import('@/views/error/error-404.vue'),
    },
    {
      path: '/index',
      name: 'LAYOUT',
      redirect: HOME_URL,
      component: () => import('@/layouts/index.vue'),
      meta: {
        title: '首页',
        icon: 'HomeFilled',
      },
      children: [
        {
          path: '/home',
          name: 'home',
          component: () => import('@/views/home/index.vue'),
          meta: {
            title: '首页',
            icon: 'HomeFilled',
            affix: true,
          },
        },
      ],
    },
    {
      path: '/data-screen',
      name: 'DataScreen',
      component: () => import('@/views/data-screen/index.vue'),
      meta: {
        icon: 'DataLine',
        title: '数据大屏',
      },
    },
    // 此路由防止控制台出现No match found for location with path的警告
    {
      path: '/:catchAll(.*)',
      meta: {
        isHide: true,
      },
      component: () => import('@/views/error/error-404.vue'), //这个是我自己的路径
    },
  ]
  
  /**
   * @description 路由未找到
   */
  export const notFoundRouter = {
    path: '/:pathMatch(.*)*',
    name: 'notFound',
    redirect: '404',
  }
  