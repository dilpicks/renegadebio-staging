<template #link>
  <!-- Vue Router Link -->
  <router-link
    v-if="props.link.type == 'route-link'"
    :class="props.link.classes"
    :to="{
      name: props.link.href,
    }"
  >
    {{ props.link.content }}
  </router-link>

  <!-- External / href || Anchor Link -->
  <a
    v-if="props.link.type === 'external'"
    :class="props.link.classes"
    :href="propOrDefault(props.link.href, '#')"
    :rel="propOrDefault(props.link.rel, 'noopener')"
    :target="propOrDefault(props.link.target, '_blank')"
  >
    {{ props.link.content }}
  </a>
</template>

<script setup lang="ts">
  import {
    // computed,
    defineProps,
    // defineComponent,
    onMounted,
    // ref,
  } from 'vue'

  import { ILink } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    link: ILink
    debug?: boolean
  }

  // interface Props extends Ilink {}

  // const props = defineProps<Props>()

  const props = withDefaults(defineProps<Props>(), {
    debug: false,
  })

  // ===========================================================================
  // Data
  // ===========================================================================

  // ===========================================================================
  // Computed
  // ===========================================================================

  // ===========================================================================
  // Methods
  // ===========================================================================
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  const propOrDefault = (prop: any, fallback: any) => {
    if (prop) {
      return prop
    } else {
      return fallback
    }
  }

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Link.vue - props: ', props)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }
  })
</script>

<style setup lang="scss">
  .link {
    // align-items: center;
    // justify-content: space-between;

    // .control {
    //   flex: 0 1 0;
    // }

    // .link-items-wrapper {
    //   flex: 0 1 auto;
    //   align-items: center;
    //   align-content: center;
    //   justify-content: flex-start;
    //   max-width: 106.8rem;
    //   overflow: hidden;
    // }

    // .control {
    //   min-width: 7.8rem;
    //   height: 7.8rem;
    //   cursor: pointer;
    // }

    // .chevron-right {
    //   background-image: url(https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-chevron-right.svg);
    //   background-position: center center;
    //   background-repeat: no-repeat;
    //   background-size: contain;
    // }

    // .chevron-left {
    //   background-image: url(https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-chevron-left.svg);
    //   background-position: center center;
    //   background-repeat: no-repeat;
    //   background-size: contain;
    // }
  }
</style>
