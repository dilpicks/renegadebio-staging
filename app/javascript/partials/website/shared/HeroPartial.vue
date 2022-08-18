<template #heroPartial>
  <section :id="data.id" class="section hero">
    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <h5 v-if="parent?.title" class="p2-bold prehead">{{ parent.title }}</h5>
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>

      <Image v-for="(image, index) in data?.images" :key="index" :image="image" />
      <Risographs v-if="data?.risographs" :risographs="data.risographs" />
      <Shape v-for="(shape, index) in data?.shapes" :key="index" :image="shape" />
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Props
  // ===========================================================================
  import HtmlContent from '@/components/HtmlContent.vue'
  import Image from '@/components/Image.vue'
  import Risographs from '@/components/Risographs.vue'
  import Shape from '@/components/Shape.vue'
  import { IPageData } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IPageData
    parent?: IPageData | null
    debug?: boolean
  }

  withDefaults(defineProps<Props>(), {
    parent: null,
    debug: false,
  })

  // ===========================================================================
  // Frozen Constants
  // ===========================================================================
</script>

<style setup lang="scss">
  .section.hero {
    background-color: $--color-theme-background-primary;
    min-height: 88.9rem;

    .copy-block {
      row-gap: 0.5rem;

      .prehead {
        margin-bottom: 0;
      }
    }

    img {
      border-radius: 2rem;
    }

    .risograph-container {
      width: 100%;
    }
  }
</style>
