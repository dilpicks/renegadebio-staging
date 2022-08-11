<template #cards>
  <div :class="['cards', ...classes]">
    <Card v-for="(card, index) in props.cards" :key="index" :card="card" />
  </div>
</template>

<!-- <div v-for="(card, index) in cards" :key="index" class="cards">
  <slot name="card" :card="card" :index="index"></slot>
</div> -->

<script setup lang="ts">
  import {
    defineProps,
    // defineComponent,
    // ref,
  } from 'vue'

  import Card from '@/components/Card.vue'
  import { ICard } from '@/types/general'

  // type Link = {
  //   id: string
  //   type: 'external' | 'route-link'
  //   href: string
  //   content: string
  //   rel?: string
  //   target?: string
  //   classes?: Array<string>
  // }

  // type Card = {
  //   id: string
  //   headline: string
  //   content: string
  //   link: Link
  //   classes?: Array<string>
  // }

  interface Props {
    cards: Array<ICard>
    classes?: Array<string> | null
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    classes: () => [],
    debug: false,
  })
</script>

<style setup lang="scss">
  .cards {
    column-gap: 2rem;
    row-gap: 8.6rem;

    &.stacked {
      flex-direction: column;
    }

    .card {
      // min-width: 26.7rem;
      // min-width: 30%;
      // max-width: 53.6rem;

      .image-container {
        img {
          border-radius: 2rem;
          overflow: hidden;
        }
      }

      // 3rd Item
      &:nth-of-type(3n) {
        .h2 {
          color: $--color-theme-eggplant-100;
        }

        .button {
          background-color: $--color-theme-eggplant-100;
        }
      }

      // 1st Item
      &:nth-of-type(3n + 1) {
        .h2 {
          color: $--color-theme-magenta-100;
        }

        .button {
          background-color: $--color-theme-magenta-100;
        }
      }

      // 2nd Item
      &:nth-of-type(3n + 2) {
        .h2 {
          color: $--color-theme-sky-blue-100;
        }

        .button {
          background-color: $--color-theme-sky-blue-100;
        }
      }
    }
  }
</style>
