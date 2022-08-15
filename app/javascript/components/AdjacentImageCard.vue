<template #adjacentImageCard>
  <div :class="['adjacent-image-card', ...(card?.classes ? card.classes : [])]">
    <Image v-if="card?.image" :image="card.image" />

    <div v-if="card?.content" class="copy-block content-frame">
      <HtmlContent :class="['adjacent-image-card-content']" :content="card.content" />
    </div>
  </div>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import {
    defineProps,
    // defineComponent
    onMounted,
    // ref
  } from 'vue'

  import HtmlContent from '@/components/HtmlContent.vue'
  import Image from '@/components/Image.vue'
  import { ICard } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    card: ICard
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    debug: false,
  })

  // ===========================================================================
  // "Frozen" Constants
  // ===========================================================================

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Card.vue - props: ', props)
      console.log('Card.vue - props.card: ', props.card)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }
  })
</script>

<style setup lang="scss">
  .adjacent-image-card {
    align-items: center;
    flex: 0 1 auto;
    flex-direction: row;
    row-gap: 3.5rem;

    min-height: 96.4rem;

    .image-container {
      flex: 0 1 auto;

      position: absolute;
      z-index: -1;

      border-radius: 2rem;
      overflow: hidden;
      margin: 0 2rem;

      // img {
      //   border-radius: 2rem;
      // }
    }

    .content-frame {
      max-width: 72.9rem;
      padding: 5.3rem 4.9rem;
      margin: 10rem 0;
    }

    .align-right,
    &:nth-of-type(odd) {
      justify-content: flex-start;

      .image-container {
        right: 0;
      }

      .content-frame {
      }
    }

    .align-left,
    &:nth-of-type(even) {
      justify-content: flex-end;

      .image-container {
        left: 0;
      }

      .content-frame {
      }
    }
  }
</style>
