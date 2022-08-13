<template #gallery-item="{ gallery-item }">
  <div :id="`gallery-item-${props.galleryItem.id}`" class="gallery-item">
    <!--
      `vue/no-v-html` linter disabled here as only approved users
      will submit content via `tinymce`
    -->
    <!-- eslint-disable-next-line vue/no-v-html -->
    <div class="gallery-item-content" v-html="props.galleryItem.content" />
    <h5 :class="['p2-bold']">{{ props.galleryItem.attibution }}</h5>
    <Image v-if="props.galleryItem.image" :image="props.galleryItem.image" />
  </div>
</template>

<script setup lang="ts">
  import {
    defineProps,
    // defineComponent
    // ref
  } from 'vue'

  import Image from '@/components/Image.vue'
  import { IGalleryItem } from '@/types/general'

  interface Props {
    galleryItem: IGalleryItem
  }

  const props = defineProps<Props>()
</script>

<style setup lang="scss">
  .gallery-item {
    align-items: center;
    align-content: center;
    flex: 0 1 100%;
    flex-wrap: wrap;
    justify-content: center;
    row-gap: 4rem;
    min-width: 100%;
    opacity: 0;

    &:first-of-type {
      opacity: 1;
    }

    .gallery-item-content {
      flex: 1 1 100%;
    }

    p {
      color: $--color-theme-white;
      text-align: center;
    }

    h5 {
      display: flex;
      flex: 1 1 100%;
      justify-content: center;
      color: $--color-theme-sky-blue-100;
      text-transform: uppercase;
    }

    q {
      quotes: '“' '”' '‘' '’';
    }

    q::before {
      content: open-quote;
    }

    q::after {
      content: close-quote;
    }

    .image-container {
      flex: 1 1 100%;
      justify-content: center;
      align-items: center;
      border-radius: 50%;
      max-width: 11.5rem;
      max-height: 11.5rem;
      overflow: hidden;
    }
  }
</style>
