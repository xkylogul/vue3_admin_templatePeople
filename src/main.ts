import './assets/main.css'

import { createApp } from 'vue'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import App from './App.vue'
import router from './router'
import pinia from '@/store/index'
import * as ElIcon from '@element-plus/icons'
//import Antd from 'ant-design-vue';
//import 'ant-design-vue/dist/reset.css';
/** 加载异步路由 */
//import '@/router/initDynamicRouter'


const app = createApp(App)
for(const name in ElIcon){
    app.component(name,(ElIcon as any)[name])
}
app.use(ElementPlus)
//app.use(Antd)
app.use(pinia)
app.use(router)

app.mount('#app')
