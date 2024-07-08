import {useUserStore} from '@/store/modules/user'
export function resetStore(){
    const userStore = useUserStore()
    userStore.$reset()
      // 清除用户信息缓存
      localStorage.removeItem("app-user")
}