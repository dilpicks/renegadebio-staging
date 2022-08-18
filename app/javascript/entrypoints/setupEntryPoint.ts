import { Component, createApp } from 'vue'
import { Router } from 'vue-router'
import { VueQueryPlugin } from 'vue-query'
import VueStripeMenu from 'vue-stripe-menu'
import { globalProperties } from './globalProperties'
import { pinia } from '@/stores'
import { setHTTPHeader } from '@/services/http.service'
import AuthService from '@/services/auth.service'

// Components
import Card from '@/components/Card.vue'
import AdjacentImageCard from '@/components/AdjacentImageCard.vue'
import OverlappingImageCard from '@/components/OverlappingImageCard.vue'

const token = AuthService.getToken()

if (token) {
  setHTTPHeader({ Authorization: token })
}

export const setupEntryPoint = (rootComponent: Component, router: Router) => {
  const app = createApp(rootComponent)

  app.use(router)
  app.use(pinia)
  app.use(VueQueryPlugin)
  app.use(VueStripeMenu)
  app.component('Card', Card)
  app.component('AdjacentImageCard', AdjacentImageCard)
  app.component('OverlappingImageCard', OverlappingImageCard)
  app.config.globalProperties = globalProperties

  app.mount('#app')
}
