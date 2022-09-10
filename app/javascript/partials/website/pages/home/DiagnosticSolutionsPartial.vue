<template #diagnosticSolutions>
  <section :id="data.id" class="section diagnostic-solutions">
    <!-- <div class="container">
      <div class="copy-block">
        <h2 class="h1">{{ headline }}</h2>
        <p class="p1">
          {{ headerCopy }}
        </p>
      </div>
    </div> -->

    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>

      <Cards v-if="data?.cards" :cards="data.cards" :classes="['stacked']" />
      <ImageList v-if="data?.images" :images="data.images" />
      <Risographs v-if="data?.risographs" :risographs="data.risographs" />
      <Shape v-for="(shape, index) in data?.shapes" :key="index" :image="shape" />
    </div>

    <div v-if="data?.tabCollection" class="container">
      <TabCollection
        :id="data.tabCollection.id"
        :class="[...(data.tabCollection?.classes ? data.tabCollection.classes : [])]"
        :tab-list="data.tabCollection.tabList"
      />
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import Cards from '@/components/Cards.vue'
  import HtmlContent from '@/components/HtmlContent.vue'
  import ImageList from '@/components/ImageList.vue'
  import Risographs from '@/components/Risographs.vue'
  import Shape from '@/components/Shape.vue'
  import TabCollection from '@/components/TabCollection.vue'
  import { IPageData } from '@/types/general'

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
  // "Frozen" Constants
  // ===========================================================================

  // const headline = 'Diagnostic Solutions Across Disease Spaces'
  // const headerCopy = `
  //   We develop diagnostics across multiple disease spaces.
  //   Currently, renegade.bio is focused on infectious diseases,
  //   reproductive health, and cardiovascular conditions.
  // `

  // const tabList: Array<ITab> = [
  //   // Infectious Disease Diagnostics
  //   {
  //     id: 'tab-infectious-disease-diagnostics',
  //     headline: 'Infectious Disease Diagnostics',
  //     image: 'https://res.cloudinary.com/renegade-bio/image/upload/photos/lgbtq-prep-testing',
  //     // title: 'PrEP Testing for LGBTQ+ Communities',
  //     // alt: 'Black male couple',
  //     content: `
  //       <p class="p2">
  //         We seek out improved technologies toward testing for infectious diseases, from diagnostic solutions for COVID-19; as well as testing for STIs, and solutions that lead toward improved sexual health.
  //       </p>
  //     `,
  //     link: {
  //       type: 'route-link',
  //       href: 'infectious-diseases',
  //       content: 'Learn More',
  //       classes: ['magenta-100', 'button', 'button-pill'],
  //     },
  //     // classes: ['magenta-100'],
  //   },

  //   // Reproductive Health Diagnostics
  //   {
  //     id: 'tab-reproductive-health-diagnostics',
  //     headline: 'Reproductive Health Diagnostics',
  //     image: 'https://res.cloudinary.com/renegade-bio/image/upload/photos/healthy-mother-and-child',
  //     // title: 'Healthy Mother & Child',
  //     // alt: 'Latina mother hugging her infant',
  //     content: `
  //       <p class="p2">
  //         We develop diagnostics for reproductive health, including testing for preeclampsia – Providing maternal health physicians with the insights to better identify at-risk pregnancies and improve their outcomes.
  //       </p>
  //     `,
  //     link: {
  //       type: 'route-link',
  //       href: 'reproductive-health',
  //       content: 'Learn More',
  //       classes: ['magenta-100', 'button', 'button-pill'],
  //     },
  //     // classes: ['magenta-100'],
  //   },

  //   // Cardiovascular Health Diagnostics
  //   {
  //     id: 'tab-cardiovascular-health-diagnostics',
  //     headline: 'Cardiovascular Health Diagnostics',
  //     image: 'https://res.cloudinary.com/renegade-bio/image/upload/photos/cardiovascular-health',
  //     // title: 'Cardiovascular Diagnostics',
  //     // alt: 'Older man with sunglasses',
  //     content: `
  //       <p class="p2">
  //         By leveraging the power of small molecules, we are working to predict cardiovascular disease risk, enabling clinicians and physicians to intervene in this deadly disease much earlier.
  //       </p>
  //     `,
  //     link: {
  //       type: 'route-link',
  //       href: 'cardiovascular-health',
  //       content: 'Learn More',
  //       classes: ['magenta-100', 'button', 'button-pill'],
  //     },
  //     // classes: ['magenta-100'],
  //   },

  //   // Innovations in Diagnostics
  //   {
  //     id: 'tab-innovations-in-diagnostics',
  //     headline: 'Innovations in Diagnostics',
  //     image:
  //       'https://res.cloudinary.com/renegade-bio/image/upload/photos/biotech-innovations-in-diagnostics',
  //     // title: 'Biotech Innovations in Diagnostics',
  //     // alt: 'Lab technicians look in microscope',
  //     content: `
  //       <p class="p2">
  //         Focused on innovation around disease prevention, we conduct R&D to explore human and planetary diagnostic solutions, leveraging PCR/qRT-PCR, LCMS, NGS, and Cobas.
  //       </p>
  //     `,
  //     link: {
  //       type: 'route-link',
  //       href: 'innovations-in-diagnostics',
  //       content: 'Learn More?',
  //       classes: ['magenta-100', 'button', 'button-pill'],
  //     },
  //     // classes: ['magenta-100'],
  //   },
  // ]
</script>

<style setup scoped lang="scss">
  .section.diagnostic-solutions {
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

    // .h1 {
    //   display: flex;
    //   color: $--color-theme-sky-blue-100;
    //   text-align: center;
    // }

    // .p1 {
    //   text-align: center;
    // }
  }
</style>
