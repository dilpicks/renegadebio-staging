<template>
  <section id="lets-innovate-together">
    <div class="container">
      <h2>{{ partialName }}</h2>

      <p class="p2">
        We partner with biotechnology companies to create novel diagnostic solutions.
      </p>

      <div class="buttons-container">
        <!-- Contact Us -->
        <router-link
          id="main-nav-contact-us"
          class="button button-pill"
          :to="{
            name: 'contact-us',
          }"
        >
          Get in Touch
        </router-link>
      </div>
    </div>

    <Risograph />
  </section>
</template>

<script setup lang="ts">
  import Risograph from '@/partials/website/RisographPartial.vue';

  const partialName = `Let’s Innovate Together`;
</script>

<style setup lang="scss">
  #lets-innovate-together {
    background-color: $--color-theme-background-primary;
    height: 67.3rem;

    position: relative;

    h2 {
      color: $--color-theme-eggplant-100;
    }
  }
</style>
