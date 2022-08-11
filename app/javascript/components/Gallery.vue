<template #gallery>
  <div
    ref="gallery"
    class="gallery"
    @mouseenter="toggleAutoScroll(false)"
    @mouseleave="toggleAutoScroll(true)"
  >
    <div class="control chevron-left" @click.prevent="previousItemHandler" />
    <div class="gallery-items-wrapper">
      <div ref="slider" class="gallery-items">
        <GalleryItem
          v-for="galleryItem in galleryItems"
          :key="galleryItem.id"
          :gallery-item="galleryItem"
        />
      </div>
    </div>
    <div class="control chevron-right" @click.prevent="nextItemHandler" />
  </div>
</template>

<script setup lang="ts">
  import {
    // computed,
    defineProps,
    // defineComponent,
    onMounted,
    ref,
  } from 'vue'

  import { gsap } from 'gsap'

  import GalleryItem from '@/components/GalleryItem.vue'
  import { IGalleryItem } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    id: string
    galleryItems: Array<IGalleryItem>
    autoScrollEnabled?: boolean
    autoScrollDelay?: number
    transitionDuration?: number
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    autoScrollEnabled: true,
    autoScrollDelay: 3,
    transitionDuration: 1,

    debug: false,
  })

  // ===========================================================================
  // Data
  // ===========================================================================
  const nextItemId = ref<string>(props.galleryItems[0].id)
  const slider = ref<HTMLElement | null>(null)

  // let props.debug = ref<boolean>(false)
  let autoScrollInterval = ref<number | null>(null)
  let autoScrollActive = ref<boolean | null>(props.autoScrollEnabled)

  // ===========================================================================
  // Computed
  // ===========================================================================
  // const ponyImageUrl = computed(() => `/pony-${props.ponyModel.color}${props.isRunning ? '-running' : ''}.gif`);

  // ===========================================================================
  // Methods
  // ===========================================================================
  const autoScoll = () => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Gallery.vue::autoScroll - running `autoScoll`...')
      console.log('--------------------------------------')
      console.log('Gallery.vue::autoScroll - props.autoScrollEnabled: ', props.autoScrollEnabled)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    if (props.autoScrollEnabled) {
      if (props.debug) {
        console.log('')
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('Gallery.vue::autoScroll - running `autoScrollInterval`...')
        console.log('--------------------------------------')
        // eslint-disable-next-line prettier/prettier
        console.log(
          'Gallery.vue::autoScroll - (1000 * props.autoScrollDelay): ',
          1000 * props.autoScrollDelay,
        )
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('')
      }

      autoScrollInterval.value = setInterval(() => {
        if (!!autoScrollActive.value) {
          nextItemHandler()
        }
        // eslint-disable-next-line prettier/prettier
      }, 1000 * props.autoScrollDelay + props.autoScrollDelay)
    }
  }

  const toggleAutoScroll = (active: boolean) => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Gallery.vue::autoScroll - toggleAutoScroll - active: ', active)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    autoScrollActive.value = active
  }

  const previousItemHandler = () => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Gallery.vue - previousItemHandler...')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    let itemElementId = props.galleryItems[getItemIndex() - 1]?.id

    if (nextItemId.value === props.galleryItems[0].id) {
      itemElementId = props.galleryItems[props.galleryItems.length - 1]?.id
    }

    loadItem(itemElementId)
  }

  const nextItemHandler = () => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Gallery.vue - nextItemHandler...')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    let itemElementId = props.galleryItems[getItemIndex() + 1]?.id

    if (nextItemId.value === props.galleryItems[props.galleryItems.length - 1]?.id) {
      itemElementId = props.galleryItems[0].id
    }

    loadItem(itemElementId)
  }

  const getItemIndex = () => {
    return props.galleryItems.findIndex((itemData) => itemData.id === nextItemId.value)
  }

  const loadItem = (itemId: string) => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Gallery.vue - loadItem - itemId: ', itemId)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    // const previousItemIndex = getItemIndex()
    const previousItem = document.querySelector(`#gallery-item-${nextItemId.value}`)

    nextItemId.value = itemId

    const nextItemIndex = getItemIndex()
    const nextItem = document.querySelector(`#gallery-item-${nextItemId.value}`)

    // eslint-disable-next-line prettier/prettier
    const transitionTo = 0 - 1108 * nextItemIndex

    if (slider.value) {
      gsap.to(slider.value, {
        x: transitionTo,
      })
    }

    if (previousItem) {
      gsap.to(previousItem, {
        opacity: 0,
      })
    }

    if (nextItem) {
      gsap.to(nextItem, {
        opacity: 1,
      })
    }
  }

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Gallery.vue - props.id: ', props.id)
      console.log('Gallery.vue - slider: ', slider)
      console.log('Gallery.vue - slider.value: ', slider.value)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    // Then setup the interval to refresh every `props.autoScrollDelay` n seconds (default is 3 seconds)
    autoScoll()
  })
</script>

<style setup lang="scss">
  .gallery {
    align-items: center;
    justify-content: space-between;

    .control {
      flex: 0 1 0;
    }

    .gallery-items-wrapper {
      flex: 0 1 auto;
      align-items: center;
      align-content: center;
      justify-content: flex-start;
      max-width: 106.8rem;
      overflow: hidden;
    }

    .control {
      min-width: 7.8rem;
      height: 7.8rem;
      cursor: pointer;
    }

    .chevron-right {
      background-image: url(https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-chevron-right.svg);
      background-position: center center;
      background-repeat: no-repeat;
      background-size: contain;
    }

    .chevron-left {
      background-image: url(https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-chevron-left.svg);
      background-position: center center;
      background-repeat: no-repeat;
      background-size: contain;
    }
  }
</style>
