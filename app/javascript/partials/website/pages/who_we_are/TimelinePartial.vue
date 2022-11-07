<template #timelinePartial>
  <section :id="data.id" class="section timeline">
    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>

      <!-- <div class="timeline-path" /> -->
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Props
  // ===========================================================================
  // import Cards from '@/components/Cards.vue'
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

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .section.timeline {
    background-color: $--color-theme-background-primary;

    background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-who-we-are-timeline-full.svg');
    background-size: 295.9rem 600rem;
    background-position-x: left;
    background-position-y: top;
    background-repeat: no-repeat;

    min-height: 347.4rem;

    .container {
      row-gap: 8.5rem;
      z-index: 2;
    }

    .timeline-path {
      position: absolute;
      left: 0rem;
      top: 0rem;

      background-color: $--color-theme-magenta-100;
      width: 18.6rem;
      min-width: 18.6rem;
      max-width: 18.6rem;
      height: 100%;
    }

    &:deep() {
    }
  }
</style>
