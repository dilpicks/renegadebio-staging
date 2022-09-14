<template #card="{ card }">
  <div :class="['card', ...(card?.classes ? card.classes : [])]">
    <Image v-if="card?.image" :image="card.image" :class="['card-header-image']" />
    <div class="copy-block">
      <h5 v-if="card?.prehead" class="prehead">{{ card.prehead }}</h5>
      <h3 v-if="card?.headline" :class="['h3', card?.color]">{{ card.headline }}</h3>
      <HtmlContent v-if="card?.content" :class="['card-content']" :content="card.content" />
    </div>
    <div v-if="card?.link" class="buttons-container">
      <Link :link="linkWithDefaults(card.link)" />
    </div>
  </div>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import {
    // computed
    // defineComponent
    onMounted,
    // ref
  } from 'vue'

  import HtmlContent from '@/components/HtmlContent.vue'
  import Image from '@/components/Image.vue'
  import Link from '@/components/Link.vue'
  import { ILink, ICard } from '@/types/general'

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

  const linkWithDefaults = (link: ILink) => {
    return {
      ...link,
      type: link?.type ? link.type : 'anchor-link',
      classes: ['button', 'button-pill', ...(link?.classes ? link.classes : [])],
    }
  }

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
      console.log('Card.vue - props.card.link: ', props.card.link)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }
  })
</script>

<style setup lang="scss">
  @import '@/assets/css/breakpoints';

  .card {
    flex: 1 1 0%;
    flex-direction: column;
    row-gap: 3.5rem;
    width: calc(100% - 4rem);
    min-width: 28rem;
    // max-width: 40.8rem;
    max-width: calc(100vw - 4rem);

    // @wip
    // flex: 1;
    // flex-direction: row;
    // flex-wrap: wrap;
    // row-gap: 3.5rem;
    // min-width: 28rem;

    @include for-phone-up {
      min-width: calc(100% - 4rem);
    }

    @include for-phone-lrg-tablet-up {
      max-width: unset;
    }

    @include for-tablet-mid-up {
      min-width: unset;
    }

    @include for-tablet-landscape-up {
    }

    @include for-desktop-up {
    }

    &.align-center {
      align-content: center;
      align-items: center;
      text-align: center;
    }

    &.adjacent-image {
      max-width: 72.9rem;
      padding: 5.3rem 4.9rem;
      margin: 10rem 0;

      .image-container {
        position: absolute;
        z-index: -1;
      }

      .align-right,
      &:nth-of-type(odd) {
        margin-right: 56rem;
        .image-container {
          transform: translateX(70%);
        }
      }

      .align-left,
      &:nth-of-type(even) {
        margin-left: 56rem;
        .image-container {
          transform: translateX(-70%);
        }
      }
    }

    .copy-block {
      .prehead {
        margin-bottom: 0.4rem; // -1.5rem;
        text-transform: uppercase;
      }
    }

    .image-container {
      flex: 0 1 auto;

      .card-header-image {
        img {
          width: 100%;
          height: auto;

          @include for-phone-up {
            flex: 1 1 auto;
          }
        }
      }
    }
  }
</style>
