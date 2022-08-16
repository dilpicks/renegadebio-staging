<template #cards>
  <div v-if="props.cardType == 'card'" :class="['cards', ...classes]">
    <Card v-for="(card, index) in props.cards" :key="index" :card="card" :debug="debug" />
  </div>

  <div v-if="props.cardType == 'adjacent-image-card'" :class="['cards', ...classes]">
    <AdjacentImageCard
      v-for="(card, index) in props.cards"
      :key="index"
      :card="card"
      :debug="debug"
    />
  </div>
</template>

<!-- <div v-for="(card, index) in cards" :key="index" class="cards">
  <slot name="card" :card="card" :index="index"></slot>
</div> -->

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import {
    defineProps,
    // defineComponent,
    // ref,
  } from 'vue'

  import Card from '@/components/Card.vue'
  import AdjacentImageCard from '@/components/AdjacentImageCard.vue'
  import { ICard } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    cards: Array<ICard>
    cardType?: string
    classes?: Array<string> | null
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    cardType: 'card',
    classes: () => [],
    debug: false,
  })

  // ===========================================================================
  // "Frozen" Constants
  // ===========================================================================

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
</script>

<style setup lang="scss">
  .cards {
    column-gap: 2rem;
    row-gap: 8.6rem;

    &.stacked {
      flex-direction: column;
    }

    // .card {
    //   .image-container {
    //     img {
    //       border-radius: 2rem;
    //       overflow: hidden;
    //     }
    //   }

    //   // 3rd Item
    //   &:nth-of-type(3n) {
    //     .h2 {
    //       color: $--color-theme-eggplant-100;
    //     }

    //     .button {
    //       background-color: $--color-theme-eggplant-100;
    //     }
    //   }

    //   // 1st Item
    //   &:nth-of-type(3n + 1) {
    //     .h2 {
    //       color: $--color-theme-magenta-100;
    //     }

    //     .button {
    //       background-color: $--color-theme-magenta-100;
    //     }
    //   }

    //   // 2nd Item
    //   &:nth-of-type(3n + 2) {
    //     .h2 {
    //       color: $--color-theme-sky-blue-100;
    //     }

    //     .button {
    //       background-color: $--color-theme-sky-blue-100;
    //     }
    //   }
    // }
  }
</style>
