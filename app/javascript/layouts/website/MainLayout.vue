<template>
  <BaseLayout>
    <div id="content-wrapper">
      <header id="site-header">
        <SiteMenu />
      </header>

      <main v-cloak>
        <router-view v-slot="{ Component }">
          <transition name="fade" mode="out-in" appear>
            <component :is="Component" />
          </transition>
        </router-view>
      </main>

      <footer id="site-footer">
        <FooterMenu />
      </footer>
    </div>
  </BaseLayout>
</template>

<script setup lang="ts">
  import BaseLayout from '@/layouts/BaseLayout.vue'
  import SiteMenu from '@/layouts/website/SiteMenu.vue'
  import FooterMenu from '@/layouts/website/FooterMenu.vue'
</script>

<style setup lang="scss">
  .fade-enter-active,
  .fade-leave-active {
    transition: opacity 0.25s ease-in-out;
  }

  .fade-enter-from,
  .fade-leave-to {
    opacity: 0;
  }

  [v-cloak] {
    display: none;
  }
</style>
