<template>
  <div class="image-container">
    <img
      :id="props.image.id"
      :class="props.image.classes"
      :src="getClSrc(props.image)"
      :title="props.image.title"
      :alt="props.image.alt"
      :width="getBaseDimension(props.image.width)"
      :height="getBaseDimension(props.image.height)"
    />
  </div>
</template>

<script setup lang="ts">
  import {
    computed,
    defineProps,
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

  // const isSVG = (src: string) => {
  //   return !!(src.split('.svg').length == 1)
  // }

  const getBaseDimension = (dimension: number) => {
    return isSVG.value ? dimension : Math.round(dimension / 3)
  }
</script>

<style setup lang="scss">
  .image-container {
  }
</style>
