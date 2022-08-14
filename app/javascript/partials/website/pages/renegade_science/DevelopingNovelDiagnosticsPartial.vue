<template #developingNovelDiagnosticsPartial>
  <section :id="data.id" class="section developing-novel-diagnostics">
    <!-- <div id="shape-how-we-developing-novel-diagnostics-header" class="shape">
      <img
        src="https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-how-we-work-developing-novel-diagnostics-header.svg"
      />
    </div> -->
    <Shape :image="shapeDataHeader" />

    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <!--
          `vue/no-v-html` linter disabled here as only approved users
          will submit content via `tinymce`
        -->
        <!-- eslint-disable-next-line vue/no-v-html -->
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>
      <Cards v-if="data?.cards" :cards="data.cards" />
    </div>

    <!-- <div id="shape-developing-novel-diagnostics-footer" class="shape">
      <img
        src="https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-how-we-work-developing-novel-diagnostics-footer.svg"
      />
    </div> -->

    <Shape :image="shapeDataFooter" />
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Props
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
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-header.svg',
    width: 2959,
    height: 711,
  }

  const shapeDataFooter: IImage = {
    id: 'shape-developing-novel-diagnostics-footer',
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-footer.svg',
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
      row-gap: 1.3rem;
      padding-bottom: 5.3rem;
      padding-top: 5.3rem;

      .h2 {
        color: $--color-theme-navy-100;
        margin-bottom: 1rem;
      }

      .button {
        background-color: $--color-theme-sky-blue-100;
      }
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
