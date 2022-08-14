<template #card="{ card }">
  <div id="card-renegade-science" :class="['card', ...(card?.classes ? card.classes : [])]">
    <Image v-if="card?.image" :image="card.image" />
    <div class="copy-block">
      <h5 v-if="card?.prehead" class="p2-bold prehead">{{ card.prehead }}</h5>
      <h3 :class="['h2', card.color]">{{ card.headline }}</h3>
      <!--
        `vue/no-v-html` linter disabled here as only approved users
        will submit content via `tinymce`
      -->
      <!-- eslint-disable-next-line vue/no-v-html -->
      <div v-if="card?.content" class="card-content" v-html="card.content" />
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

    &.align-center {
      align-content: center;
      align-items: center;
      text-align: center;
    }
  }
</style>
