<template #forEveryonesHealth>
  <section :id="data.id" class="section for-everyones-health">
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

  .section.for-everyones-health {
    background-color: $--color-theme-white;
    padding-top: 0;
    z-index: 2;

    @include for-phone-up {
      background-color: $--color-theme-navy-100;
    }

    .container {
      flex: 0 1 auto;
      flex-direction: column;
      justify-content: center;
      row-gap: 1rem;

      padding: 4.5rem $--width-gutter-padding;
      min-height: 21.6rem;

      z-index: 2;
    }

    &:deep() {
      .word-rotator {
        display: flex;
        align-items: flex-end;
        column-gap: 1rem;

        span {
          color: $--color-theme-white;
          font: $--font-secondary-400;
          font-size: 6.4rem;

          // for
          &:nth-of-type(3n + 1) {
          }

          // everyone's (variable)
          &:nth-of-type(3n + 2) {
            color: $--color-theme-sky-blue-100;
            font-size: 9.6rem;
            letter-spacing: -0.2rem;
            line-height: 11.5rem;
          }

          // health
          &:nth-of-type(3n) {
          }
        }
      }

      #shape-home-hero {
        top: -103.1rem;

        @include for-phone-up {
          top: -79.1rem;
        }
      }
    }
  }
</style>
