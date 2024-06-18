import { Plugin } from '@nuxt/types'
import ServerApiClient from '~/plugins/api/serverApiClient'

const myPlugin: Plugin = (context, inject) => {
  inject('serverApi', new ServerApiClient())
}

declare module 'vue/types/vue' {
  interface Vue {
    $serverApi: InstanceType<typeof ServerApiClient>
  }
}

declare module '@nuxt/types' {
  interface NuxtAppOptions {
    $serverApi: InstanceType<typeof ServerApiClient>
  }
  interface Context {
    $serverApi: InstanceType<typeof ServerApiClient>
  }
}

export default myPlugin