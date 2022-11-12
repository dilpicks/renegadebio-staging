<template #timelinePartial>
  <section :id="data.id" class="section timeline">
    <Shape :image="shapeData" />

    <div class="container">
      <h2 class="h1 navy-100">A brief history</h2>
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>

      <div
        v-if="data?.eventCollection"
        :id="data.eventCollection?.id"
        :class="[
          'event-collections-container',
          ...(data.eventCollection?.classes ? data.eventCollection.classes : []),
        ]"
      >
        <TimelineYearsEventGroup
          v-for="(eventGroup, index) in data.eventCollection.eventGroups"
          :key="index"
          :data="eventGroup"
        />
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Props
  // ===========================================================================
  import TimelineYearsEventGroup from '@/components/TimelineYearsEventGroup.vue'
  import HtmlContent from '@/components/HtmlContent.vue'
  import { IPageData, IImage } from '@/types/general'
  import Shape from '@/components/Shape.vue'

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

  const shapeData: IImage = {
    id: 'shape-who-we-are-timeline',
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-who-we-are-timeline.svg',
    width: 2959,
    height: 6000,
  }
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  #shape-who-we-are-timeline {
    width: 295.9rem;
    height: 600rem;

    opacity: 0.95;

    left: 0rem;
    top: 0;
    background-position-x: left;
    background-position-y: top;

    z-index: 3;
  }

  .section.timeline {
    background-color: $--color-theme-background-primary;

    // background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-who-we-are-timeline.svg');
    // background-size: 295.9rem 600rem;
    // background-position-x: left;
    // background-position-y: top;
    // background-repeat: no-repeat;

    min-height: 347.4rem;

    .container {
      flex-direction: column;
      row-gap: 8.5rem;
      z-index: 2;
      mix-blend-mode: multiply;
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

    .event-collections-container {
      flex-direction: column;
      row-gap: 0rem;
    }

    &:deep() {
    }
  }
</style>
