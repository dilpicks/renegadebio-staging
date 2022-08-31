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

    <component
      :is="'script'"
      :id="'CookieDeclaration'"
      src="https://consent.cookiebot.com/70b4fe37-19f3-42d9-8d73-bf33c31ffb1f/cd.js"
      type="text/javascript"
      async
    />
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

  body > div:last-of-type {
    justify-content: center;

    position: fixed;
    bottom: 0;
    z-index: 9999;

    padding: 2rem;
    width: 100%;
    background-color: $--color-theme-neutral-200;
  }
</style>
