<template #cards>
  <div class="cards">
    <div v-for="(card, index) in cards" :key="index">
      <card :card="card"></card>
    </div>
  </div>
</template>

<!-- <div v-for="(card, index) in cards" :key="index" class="cards">
  <slot name="card" :card="card" :index="index"></slot>
</div> -->

<script setup lang="ts">
  import {
    defineProps,
    // defineComponent,
    // ref
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
  }

  defineProps<Props>()
  // defineComponent<Card>()
</script>

<style setup lang="scss">
  .cards {
    flex-direction: column;
    max-width: 45%;
    row-gap: 4.6rem;
  }
</style>
