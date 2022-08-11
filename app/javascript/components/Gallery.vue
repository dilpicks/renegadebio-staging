<template #gallery>
  <div class="gallery">
    <div class="control chevron-left" />
    <div class="gallery-item-container">
      <gallery-item
        v-for="(galleryItem, index) in galleryItems"
        :key="index"
        :gallery-item="galleryItem"
      ></gallery-item>
    </div>
    <div class="control chevron-right" />
  </div>
</template>

<script setup lang="ts">
  import {
    defineProps,
    // defineComponent,
    // ref
  } from 'vue'

  import GalleryItem from '@/components/GalleryItem.vue'

  import { IGalleryItem } from '@/types/general'

  interface Props {
    galleryItems: Array<IGalleryItem>
  }

  defineProps<Props>()
</script>

<style setup lang="scss">
  .gallery {
    padding: 6.2rem 0;
    align-items: center;
    justify-content: space-between;

    .control {
      flex: 0 1 0;
    }

    .gallery-item-container {
      flex: 0 1 auto;
      flex-direction: column;
      align-items: center;
      align-content: center;
      justify-content: center;
    }

    // .control {
    //   min-width: 4.6rem;
    //   height: 7.8rem;
    //   padding: 1.8rem;
    // }

    .control {
      min-width: 7.8rem;
      height: 7.8rem;
      // padding: 1.8rem;
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
