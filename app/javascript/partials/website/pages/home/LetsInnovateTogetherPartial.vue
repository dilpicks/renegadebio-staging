<template>
  <section id="lets-innovate-together">
    <div class="container">
      <div class="header-block">
        <div class="copy-block">
          <h2 class="h1">{{ headline }}</h2>
          <p class="p2">
            {{ headerCopy }}
          </p>
        </div>

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
    </div>

    <div class="container">
      <Cards :cards="cardsItems" />
    </div>

    <Risograph :risographs="risographs" />
  </section>
</template>

<script setup lang="ts">
  import Risograph from '@/partials/website/RisographPartial.vue'
  import Cards from '@/components/Cards.vue'
  import { ICard } from '@/types/general'

  const headline = `Let’s Innovate Together`
  const headerCopy = `We partner with biotechnology companies to create novel diagnostic solutions.`

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

  const cardsItems: Array<ICard> = [
    {
      id: 'card-who-we-are',
      headline: 'Who We Are',
      content: `
        <p class="p4">
          From how we originated, to who makes up our team, what we create, and the people we serve – we are renegade across all.
        </p>
      `,
      link: {
        id: 'link-who-we-are',
        type: 'route-link',
        href: 'who-we-are',
        content: 'Learn About Us',
      },
    },

    {
      id: 'card-join-renegade-bio',
      headline: 'Join renegade.bio',
      content: `
        <p class="p4">
          We’re always on the lookout for talented people who are aligned with our mission.
        </p>
      `,
      link: {
        id: 'link-careers',
        type: 'route-link',
        href: 'careers',
        content: 'See Careers',
      },
    },
  ]
</script>

<style setup lang="scss">
  #lets-innovate-together {
    background-color: $--color-theme-background-primary;
    min-height: 67.3rem;

    .header-block {
      flex-direction: column;
      row-gap: 3.5rem;
    }

    .h1 {
      color: $--color-theme-eggplant-100;
    }

    .cards {
      .card {
        max-width: 35.6rem;
      }
    }
  }
</style>
