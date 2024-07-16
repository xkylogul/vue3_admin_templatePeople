import type {UserInfo} from '@/api/user/types'

export interface LoginParams{
    username:string,
    password:string
}
export interface UserState{
    userInfo:any
    token?:string
    testDa?:string

}