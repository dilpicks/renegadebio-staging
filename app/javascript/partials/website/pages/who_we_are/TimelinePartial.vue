<template #timelinePartial>
  <section :id="data.id" class="section timeline">
    <ImageList
      v-if="data?.images"
      :id="'timeline-image-list'"
      :images="data.images"
      :classes="['card']"
    />

    <div class="container timeline-background-container">
      <Shape :image="shapeData" />
    </div>

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
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-who-we-are-timeline-light-blue-bg.svg',
    width: 2959,
    height: 10000,
  }
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .section.timeline {
    padding-top: 0;
    background-color: $--color-theme-background-primary;

    // margin-top: -84rem;
    margin-top: -20rem;

    min-height: 347.4rem;
    // overflow: hidden;
    overflow: visible;

    .container {
      align-content: center;
      align-items: center;
      flex-direction: column;
      row-gap: 8.5rem;
      padding-top: 80rem;

      z-index: auto;

      @include for-phone-up {
        padding-top: 84rem;
      }
    }

    .timeline-background-container {
      margin-top: -64rem;
      padding-top: 0;

      @include for-desktop-narrow-up {
        // padding-top: 84rem;

        max-width: $--width-site-max;
      }
    }

    .timeline-container {
      flex-direction: column;
      max-width: 100%;
      position: relative;

      // margin-left: -10rem;
      // max-width: calc(100% + 10rem);

      @include for-phone-lrg-tablet-up {
        margin-left: 0rem;
        // max-width: calc(100% + 0rem);
      }

      @include for-tablet-mid-up {
        margin-left: 2rem;
      }

      @include for-desktop-narrow-up {
        margin-right: -54rem;
        width: 80rem;
      }

      .timeline-title {
        margin-left: 5rem;
        margin-bottom: 5rem;

        @include for-phone-up {
          margin-left: 10rem;
          margin-bottom: 5rem;
          text-align: center;
        }

        @media (min-width: 655px) {
          margin-left: 26%;
        }

        @include for-desktop-narrow-up {
          text-align: left;
          margin-left: 0rem;
        }

        @include for-desktop-wide-up {
          margin-left: 26rem;
          margin-bottom: -5rem;
        }
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
      row-gap: 3rem;

      @include for-desktop-narrow-up {
        max-width: 80%;
        row-gap: 1rem;
      }
    }
  }

  :deep() {
    #shape-who-we-are-timeline {
      background-position-y: -64rem;
      left: -60%;

      @include for-phone-up {
        left: -55%;
      }

      @include for-phone-lrg-up {
        left: -50%;
      }

      @include for-phone-lrg-tablet-up {
        left: -38%;
      }

      @include for-tablet-portrait-up {
        left: -36%;
      }

      @include for-tablet-landscape-up {
        left: -36%;
      }

      @include for-desktop-narrow-up {
        background-position-y: 0rem;
        left: 0;
      }

      @include for-desktop-narrow-to-mid-up {
        left: 0;
      }
    }

    #timeline-image-list {
      display: none;

      @include for-desktop-narrow-up {
        display: flex;
      }

      align-self: center;
      align-items: center;
      width: 2959px;
      min-width: 2959px;

      position: absolute;
      top: 143rem;

      flex-direction: column;
      row-gap: 34.2rem;

      // padding-left: 83rem;
      margin-left: -20%;
    }
  }
</style>
