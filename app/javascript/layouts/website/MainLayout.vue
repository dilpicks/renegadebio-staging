<template>
  <BaseLayout>
    <div id="content-wrapper">
      <header id="site-header">
        <SiteMenu />
      </header>

      <main>
        <router-view />
      </main>

      <footer id="site-footer">
        <FooterMenu />
      </footer>
    </div>
  </BaseLayout>
</template>

<script setup lang="ts">
  import BaseLayout from '../BaseLayout.vue';
  import SiteMenu from './SiteMenu.vue';
  import FooterMenu from './FooterMenu.vue';
</script>
