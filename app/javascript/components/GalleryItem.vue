<template #gallery-item="{ gallery-item }">
  <div :id="`gallery-item-${galleryItem.id}`" class="gallery-item">
    <div class="gallery-item-content" v-html="galleryItem.content" />
    <h5 :class="['p2-bold']">{{ galleryItem.attibution }}</h5>
    <div class="image-container">
      <img
        :id="galleryItem.image.id"
        :key="galleryItem.image.id"
        :class="galleryItem.image.classes"
        :src="getClSrc(galleryItem.image)"
        :title="galleryItem.image.title"
        :alt="galleryItem.image.alt"
        :width="getBaseDimension(galleryItem.image.width)"
        :height="getBaseDimension(galleryItem.image.height)"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
  import {
    defineProps,
    // defineComponent
    // ref
  } from 'vue'

  import { IGalleryItem, IImage } from '@/types/general'

  interface Props {
    galleryItem: IGalleryItem
  }

  defineProps<Props>()

  const getClSrc = (imageData: IImage) => {
    // eslint-disable-next-line prettier/prettier
    const clConfig = `upload/f_auto,q_auto,w_${getBaseDimension(
      imageData.width,
    )},h_${getBaseDimension(imageData.height)}/dpr_2.0/`

    return imageData.src.replace('upload/', clConfig)
  }

  const getBaseDimension = (dimension: number) => {
    return Math.round(dimension / 3)
  }
</script>

<style setup lang="scss">
  .gallery-item {
    align-items: center;
    align-content: center;
    flex: 0 1 auto;
    flex-direction: column;
    justify-content: center;
    row-gap: 4rem;

    p {
      color: $--color-theme-white;
      text-align: center;
    }

    h5 {
      color: $--color-theme-sky-blue-100;
    }

    .image-container {
      justify-content: center;
      align-items: center;
      border-radius: 50%;
      max-width: 11.5rem;
      max-height: 11.5rem;
      overflow: hidden;
    }
  }
</style>
