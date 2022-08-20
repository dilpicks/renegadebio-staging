import { createRouter, createWebHistory } from 'vue-router'
import routes from '@/routes/website'

const router = createRouter({
  history: createWebHistory(),
  routes,
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  scrollBehavior(to, from, savedPosition) {
    // always scroll to top
    return {
      top: 0,
      behavior: 'smooth',
    }
  },
})

export default router
