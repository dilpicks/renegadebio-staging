<template #heroWhoWeArePartial>
  <section :id="data.id" class="section hero-who-we-are">
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
    </div>

    <Shape v-for="(shape, index) in data?.shapes" :key="index" :image="shape" />
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
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .section.hero-who-we-are {
    background-color: $--color-theme-background-primary;
    padding-top: 0;
    z-index: 2;

    justify-content: center;

    // --scaling-factor: 0.31;
    --scaling-factor: 0.8;

    min-height: calc(var(--scaling-factor) * 47rem);

    @include for-tablet-mid-up {
      min-height: 47rem;
    }

    // @include for-phone-up {
    //   // --scaling-factor: 0.36;
    //   --scaling-factor: 1;
    // }

    // @include for-phone-lrg-up {
    //   --scaling-factor: 0.43;
    // }

    @include for-phone-lrg-tablet-up {
      // --scaling-factor: 0.52;
      --scaling-factor: 1;
    }

    // @include for-tablet-portrait-up {
    //   --scaling-factor: 0.62;
    // }

    // @include for-tablet-portrait-mid-up {
    //   --scaling-factor: 0.75;
    // }

    // @include for-tablet-mid-up {
    //   --scaling-factor: 0.8;
    // }

    // @include for-tablet-landscape-up {
    //   --scaling-factor: 0.9;
    // }

    // @include for-desktop-narrow-up {
    //   --scaling-factor: 1;
    // }

    .container {
      flex: 0 1 auto;
      flex-direction: column;
      justify-content: center;
      row-gap: 1rem;

      // padding: 4.5rem $--width-gutter-padding;
      // min-height: 21.6rem;

      min-height: unset;
      padding: 0 $--width-gutter-padding;

      height: calc(var(--scaling-factor) * 24.3rem);
      justify-content: center;

      // @include for-phone-lrg-tablet-up {
      //   height: calc(var(--scaling-factor) * 23.7rem);
      // }

      @include for-tablet-portrait-up {
        height: calc(var(--scaling-factor) * 23.3rem);
      }

      @include for-tablet-portrait-mid-up {
        height: calc(var(--scaling-factor) * 22.3rem);
      }

      @include for-tablet-landscape-up {
        height: calc(var(--scaling-factor) * 21.3rem);
      }

      @include for-desktop-narrow-up {
        height: calc(var(--scaling-factor) * 19.3rem);
      }

      z-index: 2;
    }

    &:deep() {
      .ml-container {
        align-items: flex-start;
        justify-content: center;
      }

      .word-rotator {
        display: flex;
        align-items: flex-start;
        flex-direction: column;
        column-gap: 1rem;

        span {
          color: $--color-theme-white;
          font: $--font-secondary-400;
          // font-size: 4.0rem;

          font-size: clamp(1rem, calc(var(--scaling-factor) * 4rem), 4rem);

          // for
          &:nth-of-type(3n + 1) {
          }

          // everyone's (variable)
          &:nth-of-type(3n + 2) {
            color: $--color-theme-sky-blue-100;
            // font-size: 6.2rem;
            letter-spacing: -0.2rem;
            // line-height: 11.5rem;
            line-height: calc(var(--scaling-factor) * 1.3);

            font-size: clamp(3.2rem, calc(var(--scaling-factor) * 6.2rem), 6.2rem);

            @include for-phone-lrg-tablet-up {
              line-height: calc(var(--scaling-factor) * 1);
            }
          }

          // health
          &:nth-of-type(3n) {
          }
        }
      }

      #shape-hero-who-we-are {
        // top: -82rem;

        &.svg-shape-container {
          svg {
            // @include for-tablet-mid-up {
            min-width: 295.9rem;
            height: auto;

            .background-fill {
              display: initial;
            }
            // }
          }
        }

        // @include for-phone-up {
        //   top: -79.1rem;
        // }
      }
    }
  }
</style>
