<template>
  <section id="lets-innovate-together">
    <div class="container">
      <h2 class="h1">{{ headline }}</h2>

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

    <Risograph :risographs="risographs" />
  </section>
</template>

<script setup lang="ts">
  import Risograph from '@/partials/website/RisographPartial.vue'

  const headline = `Let’s Innovate Together`

  const risographs = [
    {
      id: 'yellow-kid-toss',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/yellow-kid-toss',
      title: '',
      alt: '',
      width: 816,
      height: 1932,
    },

    {
      id: 'blue-man',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/blue-man',
      title: '',
      alt: '',
      width: 2202,
      height: 1998,
    },
  ]
</script>

<style setup lang="scss">
  #lets-innovate-together {
    background-color: $--color-theme-background-primary;
    min-height: 67.3rem;

    .container {
      padding: 6.2rem 0;
    }

    h2 {
      color: $--color-theme-eggplant-100;
    }
  }
</style>
