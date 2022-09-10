<template #ourFocus>
  <section :id="data.id" class="section our-focus">
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
  .section.our-focus {
    // min-height: 171.3rem;
    min-height: 125.7rem;
    padding-top: 0;
    // z-index: 2;

    background: linear-gradient(
      180deg,
      $--color-theme-white 0%,
      $--color-theme-light-blue-100 100%
    );
    background-size: contain;

    .container {
      flex: 0 1 auto;
      flex-direction: column;
      row-gap: 1rem;
      padding: 4.5rem $--width-gutter-padding;
      min-height: 24rem;
      z-index: 2;

      background-image: url(https://res.cloudinary.com/renegade-bio/image/upload/graphics/renegade-pathway);
      background-position: 130% 2.5rem;
      background-repeat: no-repeat;
      background-size: auto 140rem;
      padding: 12.4rem $--width-gutter-padding;

      row-gap: $--height-headline-gap;
    }

    &:deep() {
      .cards {
        .card {
          max-width: 56.6rem;
        }
      }
    }
  }
</style>
