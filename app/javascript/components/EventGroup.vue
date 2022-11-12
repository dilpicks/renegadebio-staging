<template #eventGroup>
  <div :id="data?.id" :class="['event-group-container', ...(data?.classes ? data.classes : [])]">
    <h4 v-if="data?.title" class="event-group-title">{{ data.title }}</h4>

    <div v-if="data?.eventGroups" class="event-groups-container">
      <EventGroup v-for="(eventGroup, index) in data.eventGroups" :key="index" :data="eventGroup" />
    </div>

    <div v-if="data?.events" class="events-container">
      <Event v-for="(event, index) in data.events" :key="index" :data="event" />
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

  import Event from '@/components/Event.vue'
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

  .event-group-container {
    flex-direction: column;
    column-gap: 2rem;
    row-gap: 5.4rem;

    max-width: 100%;

    @include for-phone-up {
      flex: 1 1 auto;
      flex-wrap: wrap;
    }

    .event-group-title {
    }

    .events-container {
      flex-direction: column;
    }
  }
</style>
