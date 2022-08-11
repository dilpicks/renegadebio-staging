<template #gallery>
  <div class="gallery">
    <div class="control chevron-left" @click.prevent="previousItemHandler" />
    <div class="gallery-items-wrapper">
      <div ref="slider" class="gallery-items">
        <gallery-item
          v-for="(galleryItem, index) in galleryItems"
          :key="index"
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
  const props = defineProps<{
    id: string
    galleryItems: Array<IGalleryItem>
  }>()

  // ===========================================================================
  // Data
  // ===========================================================================
  const nextItemId = ref<string>(props.galleryItems[0].id)
  const slider = ref<HTMLElement | null>(null)

  // ===========================================================================
  // Computed
  // ===========================================================================
  // const ponyImageUrl = computed(() => `/pony-${props.ponyModel.color}${props.isRunning ? '-running' : ''}.gif`);

  // ===========================================================================
  // Methods
  // ===========================================================================
  const previousItemHandler = () => {
    // console.log('')
    // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    // console.log('Gallery.vue - previousItemHandler...')
    // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    // console.log('')

    let itemElementId = props.galleryItems[getItemIndex() - 1]?.id

    if (nextItemId.value === props.galleryItems[0].id) {
      itemElementId = props.galleryItems[props.galleryItems.length - 1]?.id
    }

    loadItem(itemElementId)
  }

  const nextItemHandler = () => {
    // console.log('')
    // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    // console.log('Gallery.vue - nextItemHandler...')
    // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    // console.log('')

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
    // console.log('')
    // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    // console.log('Gallery.vue - loadItem - itemId: ', itemId)
    // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    // console.log('')

    // const previousItemIndex = getItemIndex()
    const previousItem = document.querySelector(`#gallery-item-${nextItemId.value}`)

    nextItemId.value = itemId

    const nextItemIndex = getItemIndex()
    const nextItem = document.querySelector(`#gallery-item-${nextItemId.value}`)

    // eslint-disable-next-line prettier/prettier
    const transitionTo = 0 - 1108 * nextItemIndex

    gsap.to(slider.value, {
      x: transitionTo,
    })

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
    // console.log('')
    // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    // console.log('Gallery.vue - props.id: ', props.id)
    // console.log('Gallery.vue - slider: ', slider)
    // console.log('Gallery.vue - slider.value: ', slider.value)
    // console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    // console.log('')
  })
</script>

<style setup lang="scss">
  .gallery {
    padding: 6.2rem 0;
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
      width: 110.8rem;
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
