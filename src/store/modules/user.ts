import {defineStore} from 'pinia'
import {logout,getUserInfo} from './api'
import type { UserState } from './model/userModel'
import type { UserInfo } from '@/api/user/types'

export const userStore  = defineStore({
    id:'app-user',
    state:():UserState => ({
    token:'',
    userInfo:null
    }),
    actions:{
          setToken(token:string){
            this.token = token
          },
           // setUserInfo
          setUserInfo(userInfo: UserInfo) {
        this.userInfo = userInfo
      },
          async Logout(){
            await logout()
          }
        //   async GetInfoAction(){

        //   }
    }
     
    
})