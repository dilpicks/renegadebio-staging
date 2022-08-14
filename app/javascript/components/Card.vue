<template #card="{ card }">
  <div id="card-renegade-science" :class="['card', ...(card?.classes ? card.classes : [])]">
    <Image v-if="card?.image" :image="card.image" />
    <div class="copy-block">
      <h5 v-if="card?.prehead" class="p2-bold prehead">{{ card.prehead }}</h5>
      <h3 v-if="card?.headline" :class="['h2', card?.color]">{{ card.headline }}</h3>
      <HtmlContent v-if="card?.content" :class="['card-content']" :content="card.content" />
    </div>
    <div v-if="card?.link" class="buttons-container">
      <router-link
        :class="['button', 'button-pill', card?.color]"
        :to="{
          name: card?.link?.href,
        }"
      >
        {{ card?.link?.content }}
      </router-link>
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
  .card {
    flex: 0 1 auto;
    flex-direction: column;
    row-gap: 3.5rem;

    &.align-center {
      align-content: center;
      align-items: center;
      text-align: center;
    }

    .prehead {
      margin-bottom: 0.4rem; // -1.5rem;
      text-transform: uppercase;
    }

    .image-container {
      flex: 0 1 auto;
    }
  }
</style>
