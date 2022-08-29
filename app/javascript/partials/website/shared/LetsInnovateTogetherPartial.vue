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

      <Cards :cards="cards" />
    </div>

    <Risographs v-if="data?.risographs" :risographs="data.risographs" />
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
  // ===========================================================================
  import Risographs from '@/components/Risographs.vue'
  import Cards from '@/components/Cards.vue'
  import { ICard, IPageData } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IPageData
    parent?: IPageData | null
    debug?: boolean
  }

  withDefaults(defineProps<Props>(), {
    parent: null,
    debug: false,
  })

  // ===========================================================================
  // File-Specific
  // ===========================================================================
  const headline = `Let’s Innovate Together`
  const headerCopy = `We partner with biotechnology companies to create novel diagnostic solutions.`

  // const risographs = [
  //   {
  //     id: 'yellow-kid-toss',
  //     src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/yellow-kid-toss',
  //     title: '',
  //     alt: '',
  //     width: 816,
  //     height: 1932,
  //   },

  //   {
  //     id: 'blue-man',
  //     src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/blue-man',
  //     title: '',
  //     alt: '',
  //     width: 2202,
  //     height: 1998,
  //   },
  // ]

  const cards: Array<ICard> = [
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
        href: 'about-us',
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
    padding: 1.5rem 0;

    .container {
      flex-direction: column;
      row-gap: 5rem;
    }

    .header-block {
      flex-direction: column;
      row-gap: 3.5rem;

      width: 75%;

      .p2 {
        max-width: 68%;
      }
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
