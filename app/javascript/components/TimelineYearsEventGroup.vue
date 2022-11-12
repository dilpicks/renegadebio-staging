<template #timelineYearsEventGroup>
  <div :id="data?.id" :class="['event-group-container', ...(data?.classes ? data.classes : [])]">
    <div v-if="data?.title" class="event-group-title">
      <h3>{{ data.title }}</h3>
    </div>

    <div v-if="data?.eventGroups" class="event-groups-container">
      <EventGroup v-for="(eventGroup, index) in data.eventGroups" :key="index" :data="eventGroup" />
    </div>
  </div>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  // import {
  //   // computed
  //   // defineComponent
  //   // onMounted,
  //   // ref
  // } from 'vue'

  import EventGroup from '@/components/EventGroup.vue'
  import { IEventGroup } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IEventGroup
    debug?: boolean
  }

  withDefaults(defineProps<Props>(), {
    debug: false,
  })

  // ===========================================================================
  // "Frozen" Constants
  // ===========================================================================

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .event-group-container.timeline-year {
    flex-direction: column;
    column-gap: 2rem;
    row-gap: 2.2rem;

    max-width: 100%;

    @include for-phone-up {
      flex: 1 1 auto;
      flex-wrap: wrap;
    }

    .event-group-title {
      display: flex;
      align-content: center;
      align-items: center;
      justify-content: center;

      background-color: $--color-theme-sky-blue-100;
      // background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-timeline-bubble-background.svg');
      // background-size: contain;
      // background-repeat: no-repeat;
      // background-position: center;
      // background-blend-mode: multiply;
      mix-blend-mode: normal;

      width: 26rem;
      min-width: 26rem;
      max-width: 26rem;

      height: 26rem;
      min-height: 26rem;
      max-height: 26rem;

      padding: 0 8rem;
      overflow: hidden;
      border-radius: 50%;

      position: relative;

      h3 {
        font-size: 9.6rem;
        line-height: 9rem;
        color: $--color-theme-white;
        word-break: break-all;
      }
    }

    .event-groups-container {
      flex-direction: column;
    }
  }
</style>
