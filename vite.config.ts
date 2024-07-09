import { fileURLToPath, URL } from 'node:url'

import { defineConfig,loadEnv } from 'vite'
import path from 'path'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig(
  (config)=>{
    const {command,mode} = config
    const env = loadEnv(mode, process.cwd())
    return {
    base:'./',
    plugins: [
      vue(),
    ],
    resolve: {
      alias: {
        '@': fileURLToPath(new URL('./src', import.meta.url))
      }
    },
    pluginOptions: {
      "style-resource-loader": {
        preProcessor: "less",
        patterns: []
      }
    },
    server:{
      host:'localhost',
      port:Number(env.VITE_APP_PORT),
      proxy:{
        [env.VITE_APP_BASE_API]: 'http://sph-api.atguigu.cn',
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/dev-api/, ''),
      }
    }
  
  }
  }

 )
