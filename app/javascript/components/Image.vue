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
    defineProps,
    // ref
  } from 'vue'

  import { IImage } from '@/types/general'

  interface Props {
    image: IImage
  }

  const props = defineProps<Props>()

  // Methods
  const getClSrc = (imageData: IImage) => {
    // eslint-disable-next-line prettier/prettier
    const calculatedWidth = getBaseDimension(imageData.width)
    const calculatedHeight = getBaseDimension(imageData.height)
    const clConfig = `upload/f_auto,q_auto,w_${calculatedWidth},h_${calculatedHeight}/dpr_2.0/`

    return imageData.src.replace('upload/', clConfig)
  }

  const getBaseDimension = (dimension: number) => {
    return Math.round(dimension / 3)
  }
</script>

<style setup lang="scss">
  .image-container {
  }
</style>
