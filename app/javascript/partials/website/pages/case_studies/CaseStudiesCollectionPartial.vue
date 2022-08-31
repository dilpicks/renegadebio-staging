<template #caseStudiesCollectionPartial>
  <section :id="data.id" class="section case-studies-collection">
    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>

      <!-- <TabCollection
        v-if="data?.tabCollection"
        :id="data.tabCollection.id"
        :tab-list="data.tabCollection.tabList"
      /> -->
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
  // ===========================================================================
  import TabCollection from '@/components/TabCollection.vue'
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
  #case-studies-collection {
    background-color: $--color-theme-light-blue-100;
    min-height: 57.3rem;

    .container {
      justify-content: center;

      &:first-of-type {
        padding-left: 12.6rem;
        padding-right: 12.6rem;
      }
    }

    .h1 {
      display: flex;
      color: $--color-theme-sky-blue-100;
      text-align: center;
    }

    .p1 {
      text-align: center;
    }
  }
</style>
