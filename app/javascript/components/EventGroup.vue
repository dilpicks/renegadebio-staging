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
  import {
    // computed
    // defineComponent
    // inject,
    onMounted,
    onUnmounted,
    // ref
  } from 'vue'

  import Event from '@/components/Event.vue'
  import EventGroup from '@/components/EventGroup.vue'
  import { IEventGroup } from '@/types/general'

  // eslint-disable-next-line import/no-named-as-default, import/order
  import gsap from 'gsap'
  // eslint-disable-next-line import/no-named-as-default, import/order
  import ScrollTrigger from 'gsap/ScrollTrigger'
  gsap.registerPlugin(ScrollTrigger)

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IEventGroup
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    debug: false,
  })

  // ===========================================================================
  // Methods
  // ===========================================================================
  const scrollTriggerProgressHandler = (trigger: ScrollTrigger) => {
    const eventGroupTitle = document.querySelector(`#${props?.data?.id} .event-group-title`)

    if (trigger.progress >= 0.3) {
      if (eventGroupTitle) {
        eventGroupTitle.classList.add('animate')
      }
    }
  }

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    // ScrollTrigger.create({
    //   trigger: `#${props?.data?.id}`,
    //   start: 'top top+=200%',
    //   end: 'bottom bottom',
    //   onUpdate: (self) => {
    //     scrollTriggerProgressHandler(self)
    //   },
    // })

    ScrollTrigger.create({
      trigger: `#${props?.data?.id}`,
      start: 'top top',
      end: 'bottom bottom',
      onUpdate: (self) => {
        scrollTriggerProgressHandler(self)
      },
    })
  })

  onUnmounted(() => {
    // emitter.off('htmlContentMounted', handleEmitReceived)
  })
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

    $timeline-year-bubble-animation-duration: 500ms;
    $timeline-year-bubble-animation-ease: cubic-bezier(0.1, 1.25, 1, 1.25);

    .event-group-title {
      opacity: 0;

      transition: all $timeline-year-bubble-animation-duration $timeline-year-bubble-animation-ease;

      &.animate {
        opacity: 1;
      }
    }

    .events-container {
      flex-direction: column;
    }
  }
</style>
