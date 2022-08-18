<template #ourDiagnosticSolutionPartial>
  <section :id="data.id" class="section our-diagnostic-solution">
    <div class="container">
      <Image v-for="(image, index) in data.images" :key="index" :image="image" />

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
  import Image from '@/components/Image.vue'
  import { IPageData } from '@/types/general'

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
</script>

<style setup lang="scss">
  .section.our-diagnostic-solution {
    background-color: $--color-theme-white;

    .container {
      column-gap: 8.5rem;
      row-gap: 8.5rem;
      z-index: 2;
    }

    .copy-block {
      flex: 1 1 0;
    }

    .cards {
      flex: 1 1 auto;
      flex-wrap: wrap;
      row-gap: 5rem;
      column-gap: 12rem;
    }

    .card {
      flex: 1 0 0%;
      row-gap: 1.3rem;
      padding: 0;

      // Overrides h3.h2
      .h2 {
        color: $--color-theme-navy-100;
        font: $--font-secondary-400;
        font-size: 3.2rem;
        line-height: 3.9rem;
        margin-bottom: 1rem;
      }
    }
  }
</style>
