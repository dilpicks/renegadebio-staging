<template>
  <div
    :id="image.id"
    :class="['shape', ...(image?.classes ? image.classes : [])]"
    :style="`
      --image-width: ${getBaseDimension(image.width)};
      --image-height: ${getBaseDimension(image.height)};
      --image-src: url('${getClSrc(image)}');
    `"
  />
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import {
    computed,
    onMounted,
    // ref
  } from 'vue'

  import { IImage } from '@/types/general'

  interface Props {
    image: IImage
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    debug: false,
  })

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Shape.vue - props: ', props)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }
  })

  // ===========================================================================
  // Computed
  // ===========================================================================
  const isSVG = computed(() => props.image.src.split('.svg').length == 2)

  // ===========================================================================
  // Methods
  // ===========================================================================
  const getClSrc = (imageData: IImage) => {
    let src = imageData.src

    // if (props.debug) {
    //   console.log('')
    //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    //   console.log('Image.vue::getClSrc - props.image.src: ', props.image.src)
    //   console.log('--------------------------------------')
    //   console.log('Image.vue::getClSrc - isSVG: ', isSVG)
    //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    //   console.log('')
    // }

    if (!isSVG.value) {
      // eslint-disable-next-line prettier/prettier
      const calculatedWidth = getBaseDimension(imageData.width)
      const calculatedHeight = getBaseDimension(imageData.height)
      const clConfig = `upload/f_auto,q_auto,w_${calculatedWidth},h_${calculatedHeight}/dpr_2.0/`

      src = imageData.src.replace('upload/', clConfig)
    }

    return src
  }

  const getBaseDimension = (dimension: number) => {
    return isSVG.value ? dimension : Math.round(dimension / 3)
  }
</script>

<style setup lang="scss">
  .shape {
    width: 100%;
    max-width: calc((var(--image-width) / 10) * 1rem);
    height: calc((var(--image-height) / 10) * 1rem);

    background-attachment: scroll;
    background-image: var(--image-src);
    background-position: center;
    background-repeat: no-repeat;
    background-size: calc((var(--image-width) / 10) * 1rem) calc((var(--image-height) / 10) * 1rem);
  }
</style>
