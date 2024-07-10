import './assets/main.css'

import { createApp } from 'vue'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import App from './App.vue'
import router from './router'
import pinia from '@/store/index'
/** 加载异步路由 */
//import '@/router/initDynamicRouter'


const app = createApp(App)
app.use(ElementPlus)
app.use(pinia)
app.use(router)

app.mount('#app')
