<template>
  <section id="trusted-partners">
    <div class="container">
      <h5 class="p2-bold">{{ headline1 }}</h5>
      <ul class="flex">
        <li v-for="partner in partners" :key="partner.id">
          <img
            :id="partner.id"
            :class="partner.classes"
            :src="partner.src"
            :title="partner.title"
            :alt="partner.alt"
            :width="getBaseDimension(partner.width)"
            :height="getBaseDimension(partner.height)"
          />
        </li>
      </ul>
    </div>

    <div class="container">
      <h5 class="p2-bold">{{ headline2 }}</h5>
    </div>

    <div id="shape-trusted-partners" class="shape">
      <img
        src="https://res.cloudinary.com/renegade-bio/image/upload/v1660152512/shapes/shape-home-hero.svg"
      />
    </div>
  </section>
</template>

<script setup lang="ts">
  type Image = {
    id: string
    src: string
    width: number
    height: number
    title?: string
    alt?: string
    classes?: Array<string>
  }

  const headline1 = `Our Trusted Partners`
  const headline2 = `For everyone's health`

  const partners: Array<Image> = [
    {
      id: 'ucsf-logo',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/UCSF-logo',
      title: 'UCSF',
      alt: 'UCSF logo',
      width: 243,
      height: 120,
    },

    {
      id: 'united-in-health-san-francisco',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/United-in-Health-San-Francisco-logo',
      title: 'United in Health San Francisco',
      alt: 'United in Health San Francisco logo',
      width: 339,
      height: 213,
    },

    {
      id: 'salvia-direct-logo',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/Salvia-Direct-logo',
      title: 'Salvia Direct',
      alt: 'Salvia Direct logo',
      width: 615,
      height: 138,
    },

    {
      id: 'the-town-umoja-health-logo',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/The-Town-Umoja-Health-logo',
      title: 'The Town Umoja Health',
      alt: 'The Town Umoja Health logo',
      width: 252,
      height: 258,
    },

    {
      id: 'bay-pls-logo',
      src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/Bay-PLS-logo.png',
      title: 'BayPLS',
      alt: 'BayPLS logo',
      width: 219,
      height: 204,
    },
  ]

  // Methods
  const getBaseDimension = (dimension: number) => {
    return Math.round(dimension / 3)
  }
</script>

<style setup lang="scss">
  #trusted-partners {
    background-color: $--color-theme-background-primary;
    min-height: 171.3rem;

    h5 {
      color: $--color-theme-sky-blue-100;
      text-transform: uppercase;
    }

    ul {
      align-content: center;
      align-items: center;
      column-gap: 4.4rem;
    }

    .container {
      flex: 0 1 auto;
      flex-direction: column;
      row-gap: 1rem;
      padding: 4.5rem 0;
      min-height: 24rem;
      z-index: 2;
    }

    #shape-trusted-partners {
      margin-top: -79.1rem;

      img {
        max-width: 295.9rem;
      }
    }
  }
</style>
