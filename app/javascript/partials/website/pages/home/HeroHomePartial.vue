<template>
  <section id="hero-home">
    <div class="container">
      <div class="copy-block">
        <h1 class="h1">
          <span id="text-we-are" class="multiply">{{ fragmentHeadline1 }}</span>
          <span id="text-renegade" class="multiply">{{ fragmentHeadline2 }}</span>
          <span id="text-at-our-core" class="multiply">{{ fragmentHeadline3 }}</span>
        </h1>

        <p class="p1">
          {{ bodyCopy }}
        </p>
      </div>

      <Risographs :risographs="risographs" />
    </div>

    <!-- <div id="shape-hero-home" class="shape">
      <img
        src="https://res.cloudinary.com/renegade-bio/image/upload/v1660152512/shapes/shape-home-hero.svg"
      />
    </div> -->
  </section>
</template>

<script setup lang="ts">
  import Risographs from '@/components/Risographs.vue'

  const fragmentHeadline1 = `We Are`
  const fragmentHeadline2 = `renegade`
  const fragmentHeadline3 = `At Our Core`

  const bodyCopy = `We are a purpose-driven, LGBTQ+ led, Public Benefit Corporation, demanding better health and healthcare for all people.`

  const risographs = [
    {
      id: 'yellow-person-with-kid',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/yellow-person-with-kid',
      title: 'yellow-person-with-kid',
      alt: 'yellow person with kid',
      width: 1353,
      height: 2313,
    },

    {
      id: 'blue-person-looking-up',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/blue-person-looking-up',
      title: 'blue-person-looking-up',
      alt: 'blue person looking up',
      width: 1012,
      height: 1038,
    },

    {
      id: 'pink-person',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/pink-person',
      title: 'pink-person',
      alt: 'pink person',
      width: 2672,
      height: 2716,
    },
  ]
</script>

<style setup lang="scss">
  #hero-home {
    background-color: $--color-theme-background-primary;
    min-height: 67.3rem;

    .container {
      row-gap: 5.9rem;

      .copy-block {
        row-gap: 5.9rem;
      }
    }

    .h1 {
      display: flex;
      flex-direction: column;
      flex: 1 1 100%;

      margin-top: 1rem;

      color: $--color-theme-eggplant-100;

      span {
        text-transform: uppercase;

        // At Out Core
        &:nth-of-type(3n) {
          color: $--color-theme-lemon-yellow-100;
          margin: -3.9rem 0 0 0;
        }

        // We Are
        &:nth-of-type(3n + 1) {
          color: $--color-theme-magenta-100;
        }

        // renegade
        &:nth-of-type(3n + 2) {
          color: $--color-theme-sky-blue-100;
          margin: -5.7rem 0 0 9.2rem;
          text-transform: lowercase;
        }
      }
    }

    p {
      // margin-top: 5.9rem;
      max-width: 47.7rem;
    }

    #yellow-person-with-kid {
      margin-left: 12.8rem;
    }

    #pink-person {
      margin-left: 30.3rem;
    }

    #shape-hero-home {
      img {
        // max-width: 150rem;
        // z-index: 0;
      }
    }
  }
</style>
