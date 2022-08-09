<template>
  <section>
    <div class="container">
      <h2 class="text-center">You are visiting the {{ pageName }} page!</h2>
    </div>
  </section>

  <LetsInnovateTogether />
</template>

<script setup lang="ts">
  // const LetsInnovateTogether = () => import('@/partials/website/LetsInnovateTogetherPartial.vue');
  import LetsInnovateTogether from '@/partials/website/LetsInnovateTogetherPartial.vue';

  const pageName = 'Home';
</script>
