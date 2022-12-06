<template #timelineYearsEventGroup>
  <div :id="data?.id" :class="['event-group-container', ...(data?.classes ? data.classes : [])]">
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
  import {
    // computed
    // defineComponent
    // inject,
    onMounted,
    onUnmounted,
    // ref
  } from 'vue'

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
    if (trigger.progress > 0.0) {
      // initCounterAnimation()

      const yearBubble = document.querySelector(
        `#${props?.data?.id} .event-group-title.timeline-year-title`,
      )

      if (yearBubble) {
        yearBubble.classList.add('animate')
      }
    }
  }

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    // ScrollTrigger.create({
    //   trigger: `#${props?.data?.id}`,
    //   start: 'top top+=150%',
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

  .event-group-container.timeline-year {
    // opacity: 0.5;
    // transform: scale(0.5);

    flex-direction: column;
    align-items: flex-start;
    column-gap: 2rem;
    row-gap: 2.2rem;

    flex-wrap: wrap;

    width: 100%;

    @include for-phone-up {
      flex: 1 1 auto;
      flex-wrap: wrap;
    }

    &.adjacent {
      @include for-desktop-narrow-up {
        flex-direction: row;
        justify-content: flex-start;
      }

      :deep() {
        .event-groups-container {
          padding-left: 0;

          @include for-desktop-narrow-up {
            padding-top: 7rem;
          }

          .event-group-container {
            &.timeline-month {
              .timeline-event {
                @include for-desktop-narrow-up {
                  margin-left: 1rem;
                }

                strong {
                  text-transform: uppercase;
                }
              }
            }
          }
        }
      }
    }

    .event-group-title.timeline-year-title {
      display: flex;
      align-content: center;
      align-items: center;
      justify-content: center;
      position: relative;

      margin-left: -5rem;

      // mix-blend-mode: multiply;

      // // opacity: 0.5;
      // transform: scale(0.5);

      @include for-phone-lrg-tablet-up {
        margin-left: 0;
      }

      @include for-desktop-narrow-up {
        flex: 0 0 26rem;
      }

      $timeline-year-bubble-animation-duration: 500ms;
      $timeline-year-bubble-animation-ease: cubic-bezier(0.1, 1.25, 1, 1.25);

      h3 {
        color: $--color-theme-white;
        word-break: break-all;
        position: absolute;

        font-size: 4.8rem;
        line-height: 5rem;
        max-width: 5rem;

        opacity: 0;
        transform: scale(0);

        transition: all $timeline-year-bubble-animation-duration
          $timeline-year-bubble-animation-ease;

        @include for-desktop-narrow-up {
          font-size: 9.6rem;
          line-height: 9rem;
          max-width: 10rem;
        }
      }

      .title-bg {
        background-color: $--color-theme-sky-blue-100;
        mix-blend-mode: multiply;

        opacity: 0;
        transform: scale(0);

        transition: all $timeline-year-bubble-animation-duration
          $timeline-year-bubble-animation-ease;

        width: 14.4rem;
        min-width: 14.4rem;
        max-width: 14.4rem;

        height: 14.4rem;
        min-height: 14.4rem;
        max-height: 14.4rem;

        border-radius: 50%;

        @include for-desktop-narrow-up {
          width: 26rem;
          min-width: 26rem;
          max-width: 26rem;

          height: 26rem;
          min-height: 26rem;
          max-height: 26rem;
        }
      }

      &.animate {
        h3,
        .title-bg {
          opacity: 1;
          transform: scale(1);
        }
      }
    }

    .event-groups-container {
      flex-direction: column;
      width: 100%;

      @include for-desktop-narrow-up {
        padding-left: 12rem;
        row-gap: 6rem;
      }
    }

    :deep() {
      .event-group-container {
        &.timeline-month {
          @include for-desktop-narrow-up {
            flex-direction: row;
          }

          .event-group-title {
            font-size: 3rem;
            text-align: right;
            color: $--color-theme-light-blue-100;

            width: 5.5rem;
            min-width: 5.5rem;
            max-width: 5.5rem;

            @include for-phone-lrg-up {
              font-size: 5rem;
              line-height: 5rem;

              width: 7rem;
              min-width: 7rem;
              max-width: 7rem;
            }

            @include for-phone-lrg-tablet-up {
              font-size: 6.4rem;
              line-height: 6.4rem;

              width: 14.2rem;
              min-width: 14.2rem;
              max-width: 14.2rem;
            }

            @include for-desktop-narrow-up {
              font-size: 6.4rem;
              line-height: 6.4rem;

              width: 10.2rem;
              min-width: 10.2rem;
              max-width: 10.2rem;
            }
          }

          .events-container {
            row-gap: 2rem;

            margin-left: 15%;

            @include for-phone-lrg-up {
              margin-left: 19%;
            }

            @include for-phone-lrg-tablet-up {
              margin-left: 29%;
            }

            @include for-tablet-portrait-up {
              margin-left: 28%;
            }

            @include for-tablet-portrait-mid-up {
              margin-left: 28%;
            }

            @media (min-width: 700px) {
              margin-left: 26%;
            }

            @include for-tablet-mid-up {
              margin-left: 23%;
            }

            @media (min-width: 825px) {
              margin-left: 22%;
            }

            @include for-tablet-landscape-up {
              margin-left: 22%;
            }

            @include for-desktop-narrow-up {
              margin-left: 0;
            }
          }

          .event-title {
            color: $--color-theme-eggplant-100;
            text-transform: uppercase;
            font-size: 1.3rem;

            @include for-desktop-narrow-up {
              font-size: 1.8rem;
            }
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

            .timeline-event-copy {
              font-size: 1.3rem;
              line-height: 2.15rem;

              @include for-desktop-narrow-up {
                font-size: 1.8rem;
                line-height: 2.7rem;
              }
            }
          }
        }
      }
    }
  }
</style>
