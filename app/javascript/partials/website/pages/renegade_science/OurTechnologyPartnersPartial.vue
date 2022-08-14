<template #ourTechnologyPartnersPartial>
  <section :id="data.id" class="section our-technology-partners">
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
    </div>
    <!-- <div id="shape-our-technology-partners-background" class="shape">
      <img
        src="https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-background.svg"
      />
    </div> -->

    <Shape :image="shapeData" />
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import HtmlContent from '@/components/HtmlContent.vue'
  import Shape from '@/components/Shape.vue'
  import { IImage, IPageData } from '@/types/general'

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
  const shapeData: IImage = {
    id: 'shape-our-technology-partners-background',
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-background.svg',
    width: 2959,
    height: 1744,
  }
</script>

<style setup lang="scss">
  .section.our-technology-partners {
    background-color: $--color-theme-white;

    .container {
      row-gap: 8.5rem;
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

    #collaboration-stages {
      padding: 6.5rem;
    }

    #content-frame-developing-preventative-diagnostics-in-house-and-in-partnership {
      margin-top: -17rem;
    }

    #shape-our-technology-partners-background {
      bottom: -79.5rem;
    }
  }
</style>
