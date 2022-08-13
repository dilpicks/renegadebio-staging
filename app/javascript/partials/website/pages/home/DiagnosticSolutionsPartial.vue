<template>
  <section id="diagnostic-solutions">
    <div class="container">
      <div class="copy-block">
        <h2 class="h1">{{ headline }}</h2>
        <p class="p1">
          {{ headerCopy }}
        </p>
      </div>
    </div>

    <div class="container">
      <TabCollection :id="'diagnostic-solutions-tab-collection'" :tab-list="tabList" />
    </div>
  </section>
</template>

<script setup lang="ts">
  import TabCollection from '@/components/TabCollection.vue'
  import { ITab } from '@/types/general'

  const headline = 'Diagnostic Solutions Across Disease Spaces'
  const headerCopy = `
    We develop diagnostics across multiple disease spaces.
    Currently, renegade.bio is focused on infectious diseases,
    reproductive health, and cardiovascular conditions.
  `

  const tabList: Array<ITab> = [
    // Infectious Disease Diagnostics
    {
      id: 'tab-infectious-disease-diagnostics',
      headline: 'Infectious Disease Diagnostics',
      image: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/tab-image-placeholder',
      content: `
        <p class="p2">
          We seek out improved technologies toward testing for infectious diseases, from diagnostic solutions for COVID-19; as well as testing for STIs, and solutions that lead toward improved sexual health.
        </p>
      `,
      link: {
        type: 'route-link',
        content: 'Learn More',
        classes: ['magenta-100'],
      },
      // classes: ['magenta-100'],
    },

    // Reproductive Health Diagnostics
    {
      id: 'tab-reproductive-health-diagnostics',
      headline: 'Reproductive Health Diagnostics',
      image: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/tab-image-placeholder',
      content: `
        <p class="p2">
          We develop diagnostics for reproductive health, including testing for preeclampsia – Providing maternal health physicians with the insights to better identify at-risk pregnancies and improve their outcomes.
        </p>
      `,
      link: {
        type: 'route-link',
        content: 'Learn More',
        classes: ['magenta-100'],
      },
      // classes: ['magenta-100'],
    },

    // Cardiovascular Health Diagnostics
    {
      id: 'tab-cardiovascular-health-diagnostics',
      headline: 'Cardiovascular Health Diagnostics',
      image: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/tab-image-placeholder',
      content: `
        <p class="p2">
          By leveraging the power of small molecules, we are working to predict cardiovascular disease risk, enabling clinicians and physicians to intervene in this deadly disease much earlier.
        </p>
      `,
      link: {
        type: 'route-link',
        content: 'Learn More',
        classes: ['magenta-100'],
      },
      // classes: ['magenta-100'],
    },

    // Innovations in Diagnostics
    {
      id: 'tab-innovations-in-diagnostics',
      headline: 'Innovations in Diagnostics',
      image: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/tab-image-placeholder',
      content: `
        <p class="p2">
          Focused on innovation around disease prevention, we conduct R&D to explore human and planetary diagnostic solutions, leveraging PCR/qRT-PCR, LCMS, NGS, and Cobas.
        </p>
      `,
      link: {
        type: 'route-link',
        content: 'Learn More',
        classes: ['magenta-100'],
      },
      // classes: ['magenta-100'],
    },
  ]
</script>

<style setup lang="scss">
  #diagnostic-solutions {
    background-color: $--color-theme-light-blue-100;
    min-height: 57.3rem;

    .container {
      justify-content: center;

      &:first-of-type {
        padding-left: 12.6rem;
        padding-right: 12.6rem;
      }
    }

    // .copy-block {
    //   max-width: 80%;
    // }

    .h1 {
      display: flex;
      color: $--color-theme-sky-blue-100;
      text-align: center;
    }

    .p1 {
      text-align: center;
    }
  }
</style>
