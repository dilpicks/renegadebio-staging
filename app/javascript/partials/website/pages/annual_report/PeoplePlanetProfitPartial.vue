<template #peoplePlanetProfitPartial>
  <section :id="data.id" class="section people-planet-profit">
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
    id: 'shape-people-planet-profit-header',
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-header-helix-with-background.svg',
    width: 2959,
    height: 1899,
  }
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .section.people-planet-profit {
    // background-color: $--color-theme-background-secondary-dark;
    // z-index: 20;
    // margin-bottom: 6.1rem;

    .container {
      row-gap: 8.5rem;
      z-index: 2;
    }

    // .risograph-container {
    //   width: 100%;
    // }

    &:deep() {
      .cards {
        justify-content: space-around;
      }

      .card {
        flex: 1 0 0%;
        row-gap: 0rem;
        padding: 0;
        overflow: hidden;

        @include for-phone-lrg-up {
          width: 40.8rem;
          min-width: 40.8rem;
          max-width: 40.8rem;
        }

        .image-container {
          img {
            // height: var(--intrinsic-height);
            border-radius: 0;
          }
        }

        .h1 {
          margin-bottom: 0.3rem;

          & + p {
            margin-bottom: 4.3rem;
          }

          &:first-of-type {
            margin-bottom: 6rem;
          }
        }

        &.padded {
          .ml-container {
            padding: 6.4rem 5.8rem;
          }
        }

        p {
          &:last-of-type {
            margin-bottom: 0;
          }
        }

        .h1,
        p {
          text-align: center;
        }

        @include for-tablet-landscape-up {
          .h1,
          p {
            text-align: left;
          }
        }
      }

      #content-frame-people-planet-profit {
        @include for-tablet-landscape-up {
          margin-top: -18rem;
        }
      }

      #shape-people-planet-profit-header {
        top: -96rem;
      }

      #shape-people-planet-profit-footer {
        bottom: -79.5rem; //-100.5rem;
      }
    }
  }
</style>
