<template #caseStudies>
  <section :id="data.id" class="section case-studies">
    <!-- <div class="container">
      <div class="copy-block">
        <h2 class="h1">{{ headline }}</h2>
      </div>
      <Cards :cards="cards" />
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

      <Cards v-if="data?.cards" :cards="data.cards" />
      <ImageList v-if="data?.images" :images="data.images" />
      <Risographs v-if="data?.risographs" :risographs="data.risographs" />
      <Shape v-for="(shape, index) in data?.shapes" :key="index" :image="shape" />
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

  // const headline = 'Case Studies'
  // const cards: Array<ICard> = [
  //   {
  //     id: 'card-covid-19',
  //     prehead: 'COVID-19',
  //     headline: 'Umoja Health',
  //     content: `
  //       <p class="p2">
  //         Working together with Umoja Health to expand COVID-19 testing, we were able to tailor our diagnostic distribution strategy to reflect the needs of the community, increasing testing across East Oakland, California.
  //       </p>
  //     `,
  //     image: {
  //       id: 'card-image-case-study-covid-19-umoja-health',
  //       src: 'https://res.cloudinary.com/renegade-bio/image/upload/graphics/umoja-health-logo',
  //       title: 'The Town Umoja Health',
  //       alt: 'Umoja Health logo',
  //       width: 1224,
  //       height: 711,
  //     },
  //     link: {
  //       id: 'link-case-studies',
  //       type: 'route-link',
  //       href: 'umoja-health',
  //       content: 'See Case Study',
  //     },
  //   },

  //   {
  //     id: 'card-preeclampsia',
  //     prehead: 'Preeclampsia',
  //     headline: 'Metabolomic Dx',
  //     content: `
  //       <p class="p2">
  //         In partnership with Metabolomic Dx, renegade.bio developed PrePsia USA, a comprehensive assessment of biomarkers that allows detection of preeclampsia risks as early as 13 weeks of pregnancy.
  //       </p>
  //     `,
  //     image: {
  //       id: 'card-image-case-study-preeclampsia-metabolomic-dx',
  //       src: 'https://res.cloudinary.com/renegade-bio/image/upload/graphics/metabolomic-dx-logo',
  //       title: 'Metabolomic Dx',
  //       alt: 'Metabolomic Dx logo',
  //       width: 1224,
  //       height: 711,
  //     },
  //     link: {
  //       id: 'link-case-studies',
  //       type: 'route-link',
  //       href: 'metabolomic',
  //       content: 'See Case Study',
  //     },
  //   },

  //   {
  //     id: 'card-fertility-health',
  //     prehead: 'Fertility Health',
  //     headline: 'Microgenesis',
  //     content: `
  //       <p class="p2">
  //         Microgenesis transforms fertility health with unparalleled analysis and support of a balanced vaginal microbiome. Together, we’re able to offer a novel and more accessible pathway to parenthood.
  //       </p>
  //     `,
  //     image: {
  //       id: 'card-image-case-study-fertility-health-microgenesis',
  //       src: 'https://res.cloudinary.com/renegade-bio/image/upload/graphics/microgenesis-logo',
  //       title: 'Microgenesis',
  //       alt: 'Microgenesis logo',
  //       width: 1224,
  //       height: 711,
  //     },
  //     link: {
  //       id: 'link-case-studies',
  //       type: 'route-link',
  //       href: 'microgenesis',
  //       content: 'See Case Study',
  //     },
  //   },
  // ]
</script>

<style setup scoped lang="scss">
  .section.case-studies {
    background-color: $--color-theme-white;
    min-height: 57.3rem;

    .container {
      row-gap: $--height-headline-gap;
    }

    // .h1 {
    //   display: flex;
    //   color: $--color-theme-navy-100;
    // }
  }
</style>
