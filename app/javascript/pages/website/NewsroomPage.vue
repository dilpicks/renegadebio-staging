<template>
  <div :id="`${parent.id}-page`" class="page">
    <Hero :data="heroData" :parent="parent" />
    <Articles :data="inTheNewsData" :parent="parent" />
    <Articles :data="pressReleasesData" :parent="parent" />
    <Publications :data="publicationsData" :parent="parent" />
    <Articles :data="awardsData" :parent="parent" />
    <MailingListSignUp :data="mailingListData" :parent="parent" />
  </div>
</template>

<script setup lang="ts">
  import Hero from '@/partials/website/shared/HeroPartial.vue'
  import Articles from '@/partials/website/shared/ArticlesPartial.vue'
  import Publications from '@/partials/website/pages/newsroom/PublicationsPartial.vue'
  import MailingListSignUp from '@/partials/website/shared/MailingListSignUpPartial.vue'
  import { IPageData } from '@/types/general'

  const parent: IPageData = {
    id: 'newsroom',
    title: 'Newsroom',
  }

  // ===========================================================================
  // Hero Section Data
  // ===========================================================================
  const heroData: IPageData = {
    id: `${parent.id}-section-hero`,
    copyBlocks: [
      {
        classes: ['hero-block'],
        content: `
          <h5 class="prehead eggplant-100">
            The Latest
          </h5>

          <h1 class="h1 navy-100">
            Newsroom
          </h1>
        `,
      },
    ],
    // images: [
    //   {
    //     id: 'purple-couple-embracing',
    //     src: 'https://res.cloudinary.com/renegade-bio/image/upload/photos/purple-couple-embracing.png',
    //     title: 'purple couple embracing',
    //     alt: 'purple couple embracing',
    //     width: 2175,
    //     height: 1842,
    //   },
    // ],
    shapes: [
      {
        id: 'shape-section-hero-header-background',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-background-multi-helix-xl.svg',
        width: 6387,
        height: 1951,
      },
    ],
  }

  // ===========================================================================
  // In The News Section Data
  // ===========================================================================
  const inTheNewsData: IPageData = {
    id: `${parent.id}-section-in-the-news`,
    copyBlocks: [
      {
        classes: ['in-the-news-block'],
        content: `
          <h2 class="h1 sky-blue-100">
            In The News
          </h2>
        `,
      },
    ],
    accordionList: {
      id: `${parent.id}-section-in-the-news-aside`,
      classes: [],
      accordionItems: [
        {
          id: 'in-the-news-press-inquiries',
          classes: ['sky-blue-100', 'active'],
          inert: true,
          title: 'For press or media inquiries, contact',
          content: `
            <div class="button-container">
              <a href="mailto:press@renegade.bio" class="button button-pill sky-blue-100">
                press@renegade.bio
              </a>

              <a href="tel:8554800771" rel="noopener" class="button button-pill transparent">
                <span class="sky-blue-100">or call +1.855.480.0771</span>
              </a>
            </div>
          `,
        },

        {
          id: 'in-the-news-media-kit',
          classes: ['magenta-100', 'active'],
          inert: true,
          title: 'Media Kit',
          content: `
            <p class="p3">
              Official logos, photos, and other resources.
            </p>

            <div class="button-container">
              <a href="#" class="button button-pill magenta-100">
                Download Now
              </a>
            </div>
          `,
        },
      ],
    },
    articleList: {
      id: `${parent.id}-section-in-the-news-articles`,
      classes: [],
      articleItems: [
        {
          id: 'in-the-news-article-001',
          classes: [],
          publicationDate: 'May 24, 2022',
          source: 'News Source',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          image: {
            id: 'in-the-news-article-image-001',
            src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/article-placeholder',
            title: 'Article FPO',
            alt: 'Article FPO',
            width: 3793,
            height: 1398,
          },
          content: `
            <div class="sub-section">
              <p class="p2">
                In quis montes, blandit aenean. Ac id faucibus arcu sed sed orci. Gravida tincidunt egestas cursus facilisi id. A, condimentum amet, at nibh volutpat. Gravida semper condimentum vel tristique egestas. Enim sit vulputate ut tincidunt fames sed ut sapien.
              </p>
            </div>

            <div class="sub-section">
              <p class="p3">
                Ac in id mauris laoreet ut adipiscing. Elementum tristique urna malesuada facilisis cursus semper. Risus id ac, sem ullamcorper molestie posuere lobortis amet. Volutpat enim quis id sagittis egestas auctor risus proin ut. Justo a senectus maecenas quis lectus sed donec dolor. Et, netus duis et adipiscing semper et orci.
              </p>

              <p class="p3">
                Sed fusce dui nunc quis porttitor ut. Natoque nullam commodo curabitur adipiscing massa ligula facilisi. Nulla elit consequat ultricies proin turpis. Diam tortor est cras senectus placerat iaculis at convallis vestibulum. Non at sodales mi, feugiat interdum. Enim, lorem viverra ut nunc auctor non.
              </p>

              <p class="p3">
                Odio elit eu sagittis, iaculis molestie ultrices tincidunt eu fermentum. Tempor magna semper erat maecenas venenatis. Sed in nisi sit tristique quis. Ipsum duis suspendisse ipsum nec cursus. Posuere lorem non dui, id platea augue sit. Quam facilisis purus eleifend dictum. Diam nec cursus vulputate aliquet.
              </p>
            </div>

            <div class="sub-section">
              <h3 class="h3 sky-blue-100">Header</h3>
              <p class="p3">
                Ac in id mauris laoreet ut adipiscing. Elementum tristique urna malesuada facilisis cursus semper. Risus id ac, sem ullamcorper molestie posuere lobortis amet. Volutpat enim quis id sagittis egestas auctor risus proin ut. Justo a senectus maecenas quis lectus sed donec dolor. Et, netus duis et adipiscing semper et orci.
              </p>

              <p class="p3">
                Sed fusce dui nunc quis porttitor ut. Natoque nullam commodo curabitur adipiscing massa ligula facilisi. Nulla elit consequat ultricies proin turpis. Diam tortor est cras senectus placerat iaculis at convallis vestibulum. Non at sodales mi, feugiat interdum. Enim, lorem viverra ut nunc auctor non.
              </p>

              <blockquote class="callout sky-blue-100">
                <p class="p3-bold">
                  Odio elit eu sagittis, iaculis molestie ultrices tincidunt eu fermentum. Tempor magna semper erat maecenas venenatis. Sed in nisi sit tristique quis. Ipsum duis suspendisse ipsum nec cursus. Posuere lorem non dui, id platea augue sit. Quam facilisis purus eleifend dictum. Diam nec cursus vulputate aliquet.
                </p>
              </blockquote>
            </div>

            <div class="sub-section">
              <h3 class="h3 sky-blue-100">Subhead</h3>
              <p class="p3">
                Ac in id mauris laoreet ut adipiscing. Elementum tristique urna malesuada facilisis cursus semper. Risus id ac, sem ullamcorper molestie posuere lobortis amet. Volutpat enim quis id sagittis egestas auctor risus proin ut. Justo a senectus maecenas quis lectus sed donec dolor. Et, netus duis et adipiscing semper et orci.
              </p>

              <p class="p3">
                Sed fusce dui nunc quis porttitor ut. Natoque nullam commodo curabitur adipiscing massa ligula facilisi. Nulla elit consequat ultricies proin turpis. Diam tortor est cras senectus placerat iaculis at convallis vestibulum. Non at sodales mi, feugiat interdum. Enim, lorem viverra ut nunc auctor non.
              </p>

              <p class="p3">
                Odio elit eu sagittis, iaculis molestie ultrices tincidunt eu fermentum. Tempor magna semper erat maecenas venenatis. Sed in nisi sit tristique quis. Ipsum duis suspendisse ipsum nec cursus. Posuere lorem non dui, id platea augue sit. Quam facilisis purus eleifend dictum. Diam nec cursus vulputate aliquet.
              </p>
            </div>
          `,
        },

        {
          id: 'in-the-news-article-002',
          classes: [],
          publicationDate: 'May 24, 2022',
          source: 'News Source',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        {
          id: 'in-the-news-article-003',
          classes: [],
          publicationDate: 'May 24, 2022',
          source: 'News Source',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        {
          id: 'in-the-news-article-004',
          classes: [],
          publicationDate: 'May 24, 2022',
          source: 'News Source',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        // 5th+ article is hidden by default
        {
          id: 'in-the-news-article-005',
          classes: [],
          publicationDate: 'May 24, 2022',
          source: 'News Source',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },
      ],
    },
  }

  // ===========================================================================
  // Press Releases Section Data
  // ===========================================================================
  const pressReleasesData: IPageData = {
    id: `${parent.id}-section-press-releases`,
    copyBlocks: [
      {
        classes: ['press-releases-block'],
        content: `
          <h2 class="h1 magenta-100">
            Press Releases
          </h2>
        `,
      },
    ],
    articleList: {
      id: `${parent.id}-section-press-releases-articles`,
      classes: [],
      articleItems: [
        {
          id: 'press-releases-article-001',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        {
          id: 'press-releases-article-002',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        {
          id: 'press-releases-article-003',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        {
          id: 'press-releases-article-004',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        // 5th+ article is hidden by default
        {
          id: 'press-releases-article-005',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },
      ],
    },
  }

  // ===========================================================================
  // Publications Section Data
  // ===========================================================================
  const publicationsData: IPageData = {
    id: `${parent.id}-section-publications`,
    copyBlocks: [
      {
        classes: ['publications-block'],
        content: `
          <h2 class="h1 eggplant-100">
            Publications
          </h2>
        `,
      },
    ],
    cards: [
      {
        id: 'card-publication-001',
        prehead: 'Subhead',
        headline: 'Publication 001',
        content: `
          <p class="p2">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          </p>
        `,
        image: {
          id: 'card-image-publication-001',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Publication FPO',
          alt: 'Publication FPO',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-publications-001',
          type: 'route-link',
          href: 'newsroom',
          content: 'Read More',
        },
      },

      {
        id: 'card-publication-002',
        prehead: 'Subhead',
        headline: 'Publication 002',
        content: `
          <p class="p2">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          </p>
        `,
        image: {
          id: 'card-image-publication-002',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Publication FPO',
          alt: 'Publication FPO',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-publications-002',
          type: 'route-link',
          href: 'newsroom',
          content: 'Read More',
        },
      },

      {
        id: 'card-publication-003',
        prehead: 'Subhead',
        headline: 'Publication 003',
        content: `
          <p class="p2">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          </p>
        `,
        image: {
          id: 'card-image-publication-003',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Publication FPO',
          alt: 'Publication FPO',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-publications-003',
          type: 'route-link',
          href: 'newsroom',
          content: 'Read More',
        },
      },

      {
        id: 'card-publication-004',
        prehead: 'Subhead',
        headline: 'Publication 004',
        content: `
          <p class="p2">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          </p>
        `,
        image: {
          id: 'card-image-publication-004',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Publication FPO',
          alt: 'Publication FPO',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-publications-004',
          type: 'route-link',
          href: 'newsroom',
          content: 'Read More',
        },
      },

      {
        id: 'card-publication-005',
        prehead: 'Subhead',
        headline: 'Publication 005',
        content: `
          <p class="p2">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          </p>
        `,
        image: {
          id: 'card-image-publication-005',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Publication FPO',
          alt: 'Publication FPO',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-publications-005',
          type: 'route-link',
          href: 'newsroom',
          content: 'Read More',
        },
      },

      {
        id: 'card-publication-006',
        prehead: 'Subhead',
        headline: 'Publication 006',
        content: `
          <p class="p2">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          </p>
        `,
        image: {
          id: 'card-image-publication-006',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Publication FPO',
          alt: 'Publication FPO',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-publications-006',
          type: 'route-link',
          href: 'newsroom',
          content: 'Read More',
        },
      },

      {
        id: 'card-publication-007',
        prehead: 'Subhead',
        headline: 'Publication 007',
        content: `
          <p class="p2">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          </p>
        `,
        image: {
          id: 'card-image-publication-007',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Publication FPO',
          alt: 'Publication FPO',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-publications-007',
          type: 'route-link',
          href: 'newsroom',
          content: 'Read More',
        },
      },
    ],
  }

  // ===========================================================================
  // Awards & Recognition Section Data
  // ===========================================================================
  const awardsData: IPageData = {
    id: `${parent.id}-section-awards`,
    copyBlocks: [
      {
        classes: ['awards-block'],
        content: `
          <h2 class="h1 sky-blue-100">
            Awards & Recognition
          </h2>
        `,
      },
    ],
    articleList: {
      id: `${parent.id}-section-awards-articles`,
      classes: [],
      articleItems: [
        {
          id: 'awards-article-001',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        {
          id: 'awards-article-002',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        {
          id: 'awards-article-003',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        {
          id: 'awards-article-004',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },

        // 5th+ article is hidden by default
        {
          id: 'awards-article-005',
          classes: [],
          publicationDate: 'May 24, 2022',
          title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        },
      ],
    },
  }

  // ===========================================================================
  // Mailing List Sign Up Data
  // ===========================================================================
  const mailingListData: IPageData = {
    id: `${parent.id}-section-mailing-list-sign-up`,
    copyBlocks: [
      {
        content: `
          <h3 class="h3 sky-blue-100">Keep up with the latest <span class="magenta-100">renegade.bio</span> news</h3>
        `,
      },
    ],
  }
</script>

<!-- <style lang="scss">
  #renegade-content-wrapper {
    background: linear-gradient(0deg, $--color-theme-white 0%, $--color-theme-light-blue-100 100%);
  }
</style> -->

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  :deep() {
    .section.hero {
      gap: 4.6rem;
      min-height: unset;
      background-color: transparent;

      $container-gap: 4.6rem;
      $image-container-bias: 60%;

      .container {
        justify-content: space-between;
        max-height: none;
        gap: $container-gap;
        z-index: auto;

        @include for-desktop-mid-up {
          max-height: 60rem;
        }

        .copy-block {
          .ml-container {
            width: 100%;
          }
        }

        // .copy-block,
        // > .image-container {
        //   z-index: 2;
        // }
      }

      // .copy-block {
      //   &.hero-block {
      //     flex: 1 1 auto;

      //     @include for-desktop-mid-up {
      //       flex: 0 1 calc(100% - $image-container-bias);
      //     }
      //   }
      // }

      #shape-section-hero-header-background {
        // top: -98rem;
        // width: 295.9rem;
        // transform: rotate(229deg);
        // z-index: 2;

        // top: -89rem;
        // width: 295.9rem;
        // transform: rotate(223deg);
        // z-index: 2;
        // margin-left: 22rem;

        top: -60rem;
        width: 638.7rem;
        left: -143rem;
        transform: rotate(240deg);
        z-index: 2;
        max-width: unset;
      }
    }

    #newsroom-section-in-the-news {
      padding-top: 10rem;
    }
  }
</style>
