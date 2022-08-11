<template #card="{ card }">
  <div id="card-renegade-science" class="card">
    <h3 :class="['h2', card.color]">{{ card.headline }}</h3>
    <div class="card-content" v-html="card.content" />
    <div class="buttons-container">
      <router-link
        :class="['button', 'button-pill', card.color]"
        :to="{
          name: card.link.href,
        }"
      >
        {{ card.link.content }}
      </router-link>
    </div>
  </div>
</template>

<script setup lang="ts">
  import {
    defineProps,
    // defineComponent
    // ref
  } from 'vue'

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
    card: ICard
  }

  defineProps<Props>()
</script>

<style setup lang="scss">
  .card {
    flex: 0 1 auto;
    flex-direction: column;
    row-gap: 0rem;

    h3 {
      margin-bottom: 2.9rem;
    }
  }
</style>
