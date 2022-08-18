<template #equitableCarePartial>
  <section :id="data.id" class="section equitable-care">
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
      <Shape v-for="(shape, index) in data?.shapes" :key="index" :image="shape" />
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import {
    onMounted,
    // ref
  } from 'vue'

  import Cards from '@/components/Cards.vue'
  import HtmlContent from '@/components/HtmlContent.vue'
  import Shape from '@/components/Shape.vue'
  import { IPageData } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IPageData
    parent?: IPageData | null | undefined
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    parent: null,
    debug: false,
  })

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('EquitableCarePartial.vue - props: ', props)
      console.log('EquitableCarePartial.vue - props.data: ', props.data)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }
  })

  // ===========================================================================
  // Frozen Constants
  // ===========================================================================
</script>

<style setup lang="scss">
  .section.equitable-care {
    background-color: $--color-theme-navy-100;

    .container {
      row-gap: 8.5rem;
      z-index: 2;
    }

    .card {
      flex: 1 0 0%;
      row-gap: 1.3rem;
      padding: 5.3rem 3.1rem;
    }

    #shape-section-equitable-care-background {
      top: -1.5rem;
      left: -66rem;
      z-index: -1;
      background-position-x: 15rem;
      background-position-y: -72rem;
      max-height: calc(100% + 3rem);
    }
  }
</style>
