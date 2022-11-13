<template #timelinePartial>
  <section :id="data.id" class="section timeline">
    <ImageList
      v-if="data?.images"
      :id="'timeline-image-list'"
      :images="data.images"
      :classes="['card']"
    />
    <Shape :image="shapeData" />

    <div class="container">
      <div class="timeline-container">
        <h2 class="h1 navy-100 timeline-title">A brief history</h2>
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
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Props
  // ===========================================================================
  import TimelineYearsEventGroup from '@/components/TimelineYearsEventGroup.vue'
  import HtmlContent from '@/components/HtmlContent.vue'
  import ImageList from '@/components/ImageList.vue'
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

  // #shape-who-we-are-timeline {
  //   width: 295.9rem;
  //   height: 600rem;

  //   opacity: 0.95;

  //   left: 0rem;
  //   top: 0;
  //   background-position-x: left;
  //   background-position-y: top;

  //   z-index: 3;
  // }

  .section.timeline {
    padding-top: 0;
    background-color: $--color-theme-background-primary;

    // background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-who-we-are-timeline.svg');
    // background-size: 295.9rem 600rem;
    // background-position-x: left;
    // background-position-y: top;
    // background-repeat: no-repeat;

    margin-top: -84rem;

    min-height: 347.4rem;
    overflow: hidden;

    .container {
      align-content: center;
      align-items: center;
      flex-direction: column;
      row-gap: 8.5rem;
      // z-index: 2;
      // mix-blend-mode: multiply;
      padding-top: 84rem;
      // padding-left: 55rem;

      z-index: auto;
    }

    .timeline-container {
      flex-direction: column;
      // margin-left: 40%;

      position: relative;
      margin-right: -54rem;
      width: 80rem;

      .timeline-title {
        margin-left: 26rem;
        margin-bottom: -5rem;
      }
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
      row-gap: 1rem;
      max-width: 80%;
    }
  }

  :deep() {
    #shape-who-we-are-timeline {
      // z-index: 2;
    }

    #timeline-image-list {
      align-self: center;
      // display: block;
      width: 2959px;
      min-width: 2959px;
      // right: 0;

      position: absolute;
      top: 143rem;
      // left: 19rem;

      flex-direction: column;
      row-gap: 34.2rem;

      // z-index: 1;

      padding-left: 83rem;
    }
  }
</style>
