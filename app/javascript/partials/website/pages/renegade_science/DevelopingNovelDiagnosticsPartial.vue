<template #developingNovelDiagnosticsPartial>
  <section :id="data.id" class="section developing-novel-diagnostics">
    <Shape :image="shapeDataHeader" />

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
    </div>

    <Shape :image="shapeDataFooter" />
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
  // ===========================================================================
  import Cards from '@/components/Cards.vue'
  import HtmlContent from '@/components/HtmlContent.vue'
  import Shape from '@/components/Shape.vue'
  import { IImage, IPageData } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IPageData
    parent?: IPageData | null | undefined
    debug?: boolean
  }

  withDefaults(defineProps<Props>(), {
    parent: null,
    debug: false,
  })

  // ===========================================================================
  // Frozen Constants
  // ===========================================================================
  const shapeDataHeader: IImage = {
    id: 'shape-developing-novel-diagnostics-header',
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-header-blue.svg',
    width: 2959,
    height: 711,
  }

  const shapeDataFooter: IImage = {
    id: 'shape-developing-novel-diagnostics-footer',
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-footer-blue.svg',
    width: 2959,
    height: 1006,
  }
</script>

<style setup lang="scss">
  .section.developing-novel-diagnostics {
    background-color: $--color-theme-background-secondary-dark;
    z-index: 20;
    margin-bottom: 6.1rem;

    .container {
      row-gap: 8.5rem;
      z-index: 2;
    }

    .risograph-container {
      width: 100%;
    }

    .card {
      flex: 1 0 0%;
      row-gap: 1.3rem;

      padding: 5.3rem 3.1rem;

      // padding-bottom: 5.3rem;
      // padding-top: 5.3rem;

      // Overrides h3.h2
      .h2 {
        color: $--color-theme-navy-100;
        font: $--font-secondary-400;
        font-size: 3.2rem;
        line-height: 3.9rem;
        margin-bottom: 1rem;
      }

      // .button {
      //   background-color: $--color-theme-sky-blue-100;
      // }
    }

    #pink-man-in-hat {
      top: -20rem;
      left: -24.8rem;
    }

    #blue-pregnant-woman {
      right: -13rem;
      top: -11rem;
    }

    #content-frame-developing-preventative-diagnostics-in-house-and-in-partnership {
      margin-top: -17rem;
    }

    #shape-developing-novel-diagnostics-header {
      top: -42rem;
    }

    #shape-developing-novel-diagnostics-footer {
      bottom: -79.5rem; //-100.5rem;
    }
  }
</style>
