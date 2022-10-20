<template #articleListItem>
  <div
    v-if="articleItem"
    :id="`article-item-${articleItem.id}`"
    ref="root"
    :class="[
      'article-item',
      ...(articleItem?.attributes?.classes ? articleItem.attributes.classes : []),
    ]"
  >
    <Link :link="props.articleItem.attributes.link">
      <h5
        v-if="articleItem?.attributes?.source || articleItem?.attributes?.publishedAt"
        class="prehead"
      >
        <span v-if="articleItem?.attributes?.source" class="p5 article-source">
          {{ articleItem.attributes.source }}
        </span>

        <time
          v-if="articleItem?.attributes?.publishedAt"
          :datetime="articleItem.attributes.publishedAt"
          itemprop="datePublished"
          class="p5 article-publication-date"
        >
          {{ articleItem.attributes.publishedDate }}
        </time>
      </h5>

      <!-- eslint-disable vue/no-v-html -->
      <h4
        v-if="articleItem?.attributes?.title"
        class="article-title p2-bold"
        v-html="articleItem.attributes.title"
      />
      <!-- eslint-enable -->
    </Link>
  </div>
</template>

<script setup lang="ts">
  import {
    // computed,
    // defineProps,
    // defineEmits,
    onMounted,
    ref,
    // useContext,
  } from 'vue'

  // import { useRoute } from 'vue-router'
  // import articles from '@/data/articles'

  import Link from '@/components/Link.vue'

  import { IArticle } from '@/types/general'

  // const { emit } = useContext()

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    articleItem: IArticle
    debug?: boolean
  }

  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const props = withDefaults(defineProps<Props>(), {
    debug: true,
  })

  const root = ref(null)
  defineExpose({
    root,
  })

  // const route = useRoute()
  // const articleItem = computed(() => {
  //   return articles.find((article) => article.id === route.params.id)
  // })

  // ===========================================================================
  // Computed
  // ===========================================================================
  // const articleLinkParams = computed(() => {
  //   // console.log('props.articleItem: ', props.articleItem).

  //   if (props.articleItem?.attributes?.link) {
  //     return {
  //       type: 'external',
  //       href: props.articleItem.attributes.link,
  //       classes: ['article-link'],
  //     }
  //   } else {
  //     return {
  //       type: 'route-link',
  //       href: 'article',
  //       params: { id: props.articleItem.id },
  //       classes: ['article-link'],
  //     }
  //   }
  // })

  // ===========================================================================
  // Mounted
  // ===========================================================================
  onMounted(() => {
    // console.log('props: ', props)
  })

  // ===========================================================================
  // Methods
  // ===========================================================================
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .article-item {
    align-items: flex-start;
    align-content: flex-start;
    flex: 1 1 100%;
    flex-wrap: wrap;
    justify-content: flex-start;

    padding: 2rem 0;
    row-gap: 0.5rem;

    border-color: $--color-border;
    border-style: solid;
    border-width: 0 0 1px 0;

    // @include for-desktop-mid-up {
    //   max-width: 85rem;
    // }

    .prehead,
    .article-title {
      flex: 1 1 100%;
    }

    .prehead {
      color: $--color-theme-navy-60;

      * {
        &:nth-child(2) {
          &:before {
            content: '\00a0\00a0|\00a0\00a0';
            display: inline-block;
          }
        }
      }
    }

    .article-title {
      color: $--color-theme-navy-100;

      flex-wrap: wrap;
      white-space: normal;
    }

    :deep() {
      .article-link {
        text-decoration: none;
      }
    }
  }
</style>
