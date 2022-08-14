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

      <Risographs v-if="risographs" :risographs="risographs" />
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Props
  // ===========================================================================
  import HtmlContent from '@/components/HtmlContent.vue'
  import Risographs from '@/components/Risographs.vue'
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
  const risographs = [
    {
      id: 'pink-man-in-hat',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/pink-man-in-hat',
      title: 'pink-man-in-hat',
      alt: 'pink man in hat',
      width: 3361,
      height: 2427,
    },

    {
      id: 'blue-pregnant-woman',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/blue-pregnant-woman',
      title: 'blue-pregnant-woman',
      alt: 'blue pregnant woman',
      width: 1688,
      height: 2645,
    },
  ]
</script>

<style setup lang="scss">
  .section.hero {
    background-color: $--color-theme-background-primary;
    min-height: 88.9rem;

    .h1 {
      color: $--color-theme-sky-blue-100;
    }

    .copy-block {
      row-gap: 0.5rem;

      .prehead {
        margin-bottom: 0;
      }
    }

    .risograph-container {
      width: 100%;
    }

    #pink-man-in-hat {
      top: -20rem;
      left: -24.8rem;
    }

    #blue-pregnant-woman {
      right: -13rem;
      top: -11rem;
    }
  }
</style>
