<template #animatedComponent>
  <div ref="target">
    <transition :name="animation.type">
      <div v-inline-transition="animate" class="animation-container">
        <slot />
      </div>
    </transition>
  </div>
</template>

<script setup lang="ts">
  import {
    // computed,
    // defineComponent,
    defineEmits,
    // defineProps,
    onMounted,
    // reactive,
    ref,
    // toRaw,
  } from 'vue'

  import { IAnimation } from '@/types/general'

  interface Props {
    debug?: boolean
    animation: IAnimation
  }

  withDefaults(defineProps<Props>(), {
    debug: false,
  })

  const target = ref()
  const animate = ref(false)

  const observer = new IntersectionObserver(
    ([entry]) => {
      // console.log('')
      // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      // console.log('entry.isIntersecting: ', entry.isIntersecting)
      // console.log('entry.target.classList: ', entry.target.classList)
      // console.log('--------------------------------------')

      const animationContainer = document.querySelector('.animation-container')

      if (entry.isIntersecting && animationContainer) {
        // console.log('setting `animate` value to: ', entry.isIntersecting)
        animate.value = true
        animationContainer.classList.add('animation-triggered')
      } else {
        // console.log('skipping `animate` value change...')
        // console.log('animationContainer?.classList: ', animationContainer?.classList)
      }

      // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      // console.log('')
    },
    {
      threshold: 0.5,
    },
  )

  const emit = defineEmits<{
    (event: 'animationMounted'): void
  }>()

  // ===========================================================================
  // Mounted
  // ===========================================================================
  onMounted(() => {
    emit('animationMounted')

    observer.observe(target.value)
  })
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .animation-container.fade-enter-from,
  .animation-container.zoom-enter-from {
    transition: none;
  }

  // .animation-container {
  //   &.fade-enter-from {
  //     .animated-item-container {
  //       transition: none;
  //     }
  //   }
  // }

  // .animated-item-container {
  //   opacity: 0;
  // }

  // .fade-enter-from {
  //   .animated-item-container {
  //     transition: none;
  //   }
  // }

  /* Fade animation */
  // .fade-enter-active,
  // .fade-leave-active {
  //   .animated-item-container {
  //     transition: opacity 3000ms ease;
  //   }
  // }

  // .fade-enter-from,
  // .fade-leave-to {
  //   .animated-item-container {
  //     opacity: .5;
  //   }
  // }

  // .fade-enter-active,
  // .fade-leave-active {
  //   transition: all 200ms ease;
  // }

  // .fade-leave-active {
  //   transition: all 200ms ease;
  // }

  // .fade-leave-to {
  //   opacity: 0.25;
  // }

  .fade-enter-active {
    transition: all 300ms ease;
    // transition-delay: 500ms;
  }

  .fade-enter-from {
    // opacity: 0;
  }

  // .animation-triggered {
  //   .fade-enter-from {
  //     transition: none;
  //   }
  // }

  // /* Zoom animation */
  // .zoom-enter-active,
  // .zoom-leave-active {
  //   transition: transform 300ms ease;
  // }

  // .zoom-enter-from,
  // .zoom-leave-to {
  //   transform: scale(0.9);
  // }
</style>
