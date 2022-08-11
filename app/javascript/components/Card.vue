<template #card="{ card }">
  <div id="card-renegade-science" class="card">
    <Image v-if="card.image" :image="card.image" />
    <div class="copy-block">
      <h5 v-if="card.prehead" class="p2-bold prehead">{{ card.prehead }}</h5>
      <h3 :class="['h2', card.color]">{{ card.headline }}</h3>
      <div class="card-content" v-html="card.content" />
    </div>
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

  import Image from '@/components/Image.vue'
  import { ICard } from '@/types/general'

  interface Props {
    card: ICard
  }

  defineProps<Props>()
</script>

<style setup lang="scss">
  .card {
    flex: 0 1 auto;
    flex-direction: column;
    row-gap: 3.5rem;

    .prehead {
      margin-bottom: -1.5rem;
      text-transform: uppercase;
    }
  }
</style>
