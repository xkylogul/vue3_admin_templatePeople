import {defineStore} from 'pinia'
import {logout,getUserInfo} from '@/api'
import type { UserState } from './model/userModel'
import type { UserInfo } from '@/api/user/types'
//import {useRouter} from 'vue-router'

export const useUserStore  = defineStore({
    id:'app-user',//   id: 必须的，在所有 Store 中唯一
    state:():UserState => ({
    token:'',
    userInfo:null,
    testDa:'8829'

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

          },
          async GetInfoAction(){
            const {data} = await getUserInfo()
            this.userInfo = data
            console.log(data)


          }
    },
     
   persist:true 
})