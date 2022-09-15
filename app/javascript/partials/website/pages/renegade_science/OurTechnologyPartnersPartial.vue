<template #ourTechnologyPartnersPartial>
  <section :id="data.id" class="section our-technology-partners">
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

    <Shape :image="shapeData" />
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
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

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .section.our-technology-partners {
    background-color: $--color-theme-white;

    .container {
      row-gap: 8.5rem;
    }

    &:deep() {
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
        padding: 2rem;

        @include for-tablet-landscape-up {
          padding: 4rem;
        }

        @include for-desktop-narrow-up {
          padding: 6.5rem;
        }

        .image-container {
          img {
            max-width: 100%;
            height: auto;
          }
        }
      }

      #content-frame-developing-preventative-diagnostics-in-house-and-in-partnership {
        margin-top: -17rem;
      }

      #shape-our-technology-partners-background {
        bottom: -46.5rem;
      }
    }
  }
</style>
