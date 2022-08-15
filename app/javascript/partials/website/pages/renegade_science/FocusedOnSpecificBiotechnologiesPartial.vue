<template #focusedOnSpecificBiotechnologiesPartial>
  <section :id="data.id" class="section focused-on-specific-biotechnologies">
    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>

      <Cards v-if="data?.cards" :cards="data.cards" :debug="debug" />
    </div>
  </section>
</template>

<script setup lang="ts">
  /// ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import Cards from '@/components/Cards.vue'
  import HtmlContent from '@/components/HtmlContent.vue'
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
  .section.focused-on-specific-biotechnologies {
    background-color: $--color-theme-light-blue-40;

    .container {
      row-gap: 8.5rem;
    }

    .cards {
      flex-wrap: wrap;
      gap: 5rem;
    }

    .card {
      // flex: 1 1 50%;
      // row-gap: 1.3rem;

      // 50% - Half of the .cards column-gap
      width: calc(50% - 2.5rem);

      // padding-bottom: 5.3rem;
      // padding-top: 5.3rem;

      .h2 {
        color: $--color-theme-navy-100 !important;
        // margin-bottom: 1rem;
      }
    }
  }
</style>
