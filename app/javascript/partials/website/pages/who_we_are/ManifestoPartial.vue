<template #manifestoPartial>
  <section :id="data.id" class="section manifesto">
    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
  import {
    // computed,
    // defineComponent,
    inject,
    // nextTick,
    onBeforeMount,
    onMounted,
    onUnmounted,
    // ref,
  } from 'vue'

  // ===========================================================================
  // Props
  // ===========================================================================
  import HtmlContent from '@/components/HtmlContent.vue'
  import { IPageData } from '@/types/general'

  // eslint-disable-next-line import/no-named-as-default, import/order
  import gsap from 'gsap'
  // eslint-disable-next-line import/no-named-as-default, import/order
  import ScrollTrigger from 'gsap/ScrollTrigger'
  gsap.registerPlugin(ScrollTrigger)

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IPageData
    parent?: IPageData | null | undefined
    debug?: boolean
  }

  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const props = withDefaults(defineProps<Props>(), {
    parent: null,
    debug: false,
  })

  let scrollTrigger: ScrollTrigger

  // ===========================================================================
  // Methods
  // ===========================================================================
  // const scrollTriggerProgressHandler = (trigger: ScrollTrigger) => {
  //   console.log(`#${props?.data?.id} - progress: `, trigger.progress)
  //   const imageContainers = document.querySelectorAll<HTMLElement>(
  //     `.copy-block`,
  //   )

  //   if (imageContainers) {
  //     if (trigger.progress < 0.15 || trigger.progress >= 0.7) {
  //       imageContainers.forEach((imageContainer: HTMLElement) => {
  //         imageContainer.classList.remove('animate')
  //       })
  //     } else if (trigger.progress >= 0.15 && trigger.progress < 0.25) {
  //       imageContainers[0].classList.add('animate')
  //     } else if (trigger.progress >= 0.25 && trigger.progress < 0.5) {
  //       imageContainers[1].classList.add('animate')
  //     } else if (trigger.progress >= 0.5 && trigger.progress < 0.7) {
  //       imageContainers[2].classList.add('animate')
  //     }
  //   }
  // }

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onBeforeMount(() => {
    // window.addEventListener('resize', handleWindowResize)
    // emitter.on('elementHeightChange', handleElementHeightChange)
  })

  onMounted(() => {
    // handleWindowResize()
    // rebuildScrollTrigger()
    // scrollTrigger = ScrollTrigger.create({
    //   trigger: `#${props?.data?.id}`,
    //   start: 'top center',
    //   end: 'bottom bottom',
    //   // markers: true,
    //   // id: props?.data?.id,
    //   onUpdate: (self) => {
    //     scrollTriggerProgressHandler(self)
    //   },
    // })
  })

  onUnmounted(() => {
    // window.removeEventListener('resize', handleWindowResize)
    // emitter.off('elementHeightChange', handleElementHeightChange)
  })
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .section.manifesto {
    .container {
      position: relative;

      row-gap: 6rem;

      @include for-tablet-landscape-up {
        row-gap: 1rem;
      }

      :deep() {
        > .copy-block {
          .ml-container {
            @include for-tablet-landscape-up {
              max-width: 50%;
            }
          }

          ul.unmarked-list {
            flex-direction: column;
            padding-left: 4rem;

            @include for-tablet-portrait-up {
              padding-left: 7rem;
            }

            @include for-tablet-mid-up {
              padding-left: 10rem;
            }
          }

          &:nth-of-type(odd) {
            align-content: flex-start;
          }

          &:nth-of-type(even) {
            align-content: flex-end;
          }
        }

        .content-frame {
          top: 22.5rem;
        }
      }
    }
  }
</style>
