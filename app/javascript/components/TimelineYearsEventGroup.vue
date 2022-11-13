<template #timelineYearsEventGroup>
  <div :id="data?.id" :class="['event-group-container', ...(data?.classes ? data.classes : [])]">
    <!-- <div v-if="data?.title" class="event-group-title timeline-year-title">
      <h3>{{ data.title }}</h3>
    </div> -->

    <div v-if="data?.title" class="event-group-title timeline-year-title">
      <h3>{{ data.title }}</h3>
      <div class="title-bg" />
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
    align-items: flex-start;
    column-gap: 2rem;
    row-gap: 2.2rem;

    flex-wrap: wrap;

    width: 100%;
    // max-width: 100%;

    @include for-phone-up {
      flex: 1 1 auto;
      flex-wrap: wrap;
    }

    &.adjacent {
      flex-direction: row;
      justify-content: flex-start;

      :deep() {
        .event-groups-container {
          padding-top: 7rem;
          padding-left: 0;

          .event-group-container {
            &.timeline-month {
              .timeline-event {
                margin-left: 1rem;

                strong {
                  text-transform: uppercase;
                }

                &:before {
                  // display: none;
                }
              }
            }
          }
        }
      }
    }

    // .event-group-title.timeline-year-title {
    //   display: flex;
    //   align-content: center;
    //   align-items: center;
    //   justify-content: center;

    //   background-color: $--color-theme-sky-blue-100;
    //   // background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-timeline-bubble-background.svg');
    //   // background-size: contain;
    //   // background-repeat: no-repeat;
    //   // background-position: center;
    //   // background-blend-mode: multiply;
    //   // mix-blend-mode: normal;
    //   mix-blend-mode: multiply;

    //   width: 26rem;
    //   min-width: 26rem;
    //   max-width: 26rem;

    //   height: 26rem;
    //   min-height: 26rem;
    //   max-height: 26rem;

    //   padding: 0 8rem;
    //   overflow: hidden;
    //   border-radius: 50%;

    //   position: relative;

    //   h3 {
    //     font-size: 9.6rem;
    //     line-height: 9rem;
    //     color: $--color-theme-white;
    //     word-break: break-all;
    //   }
    // }

    .event-group-title.timeline-year-title {
      display: flex;
      align-content: center;
      align-items: center;
      justify-content: center;

      flex: 0 0 26rem;

      position: relative;

      h3 {
        font-size: 9.6rem;
        line-height: 9rem;
        color: $--color-theme-white;
        word-break: break-all;
        position: absolute;
        max-width: 10rem;
      }

      .title-bg {
        background-color: $--color-theme-sky-blue-100;
        // background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-timeline-bubble-background.svg');
        // background-size: contain;
        // background-repeat: no-repeat;
        // background-position: center;
        // background-blend-mode: multiply;
        // mix-blend-mode: normal;
        mix-blend-mode: multiply;

        width: 26rem;
        min-width: 26rem;
        max-width: 26rem;

        height: 26rem;
        min-height: 26rem;
        max-height: 26rem;

        // overflow: hidden;
        border-radius: 50%;
        // position: absolute;
      }
    }

    .event-groups-container {
      flex-direction: column;
      padding-left: 12rem;
      row-gap: 6rem;
    }

    :deep() {
      .event-group-container {
        // flex-wrap: wrap;
        width: 100%;

        &.timeline-month {
          flex-direction: row;

          .event-group-title {
            font-size: 6.4rem;
            text-align: right;
            color: $--color-theme-light-blue-100;

            width: 10.2rem;
            min-width: 10.2rem;
            max-width: 10.2rem;

            line-height: 6.4rem;
          }

          .events-container {
            row-gap: 2rem;
          }

          .event-title {
            color: $--color-theme-eggplant-100;
            text-transform: uppercase;
          }

          .timeline-event {
            flex-direction: column;
            margin-left: 5rem;
            position: relative;

            &:before {
              display: block;
              position: absolute;
              left: -5.7rem;
              top: 1.1rem;
              content: '';
              width: 4.7rem;
              height: 0.5rem;
              background-color: $--color-theme-sky-blue-100;
              mix-blend-mode: multiply;
            }
          }
        }
      }
    }
  }
</style>
