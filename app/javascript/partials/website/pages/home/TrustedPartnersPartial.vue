<template>
  <section id="trusted-partners">
    <div id="shape-trusted-partners" class="shape">
      <img
        src="https://res.cloudinary.com/renegade-bio/image/upload/v1660152512/shapes/shape-home-hero.svg"
      />
    </div>

    <div id="partner-list" class="container">
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

    <div id="for-health" class="container">
      <h2 class="p2-bold word-rotator">
        <span>{{ headline2Fragment1 }}</span>
        <span>{{ headline2Fragment2 }}</span>
        <span>{{ headline2Fragment3 }}</span>
      </h2>
    </div>

    <div id="our-focus" class="container">
      <h2 class="h1 navy-100">{{ headline3 }}</h2>

      <cards :cards="cardsItems"></cards>
    </div>
  </section>
</template>

<script setup lang="ts">
  import Cards from '@/components/Cards.vue'
  import { IImage, ICard } from '@/types/general'

  const headline1 = `Our Trusted Partners`

  const headline2Fragment1 = `For`
  const headline2Fragment2 = `everyone's`
  const headline2Fragment3 = `health`

  const headline3 = `Our Focus is Two-fold`

  const partners: Array<IImage> = [
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

  const cardsItems: Array<ICard> = [
    {
      id: 'card-renegade-science',
      headline: 'renegade science',
      content: `<p class="p2">
        We develop diagnostics that identify disease earlier, faster, and more affordably. We
        create our diagnostics in-house, as well as with biotech partners who are also pushing for
        radically improved health outcomes.
        <br /><br />
        <strong>
          By giving people access to these diagnostics, every person can achieve better health.
        </strong>
      </p>`,
      color: `sky-blue-100`,
      link: {
        id: 'link-renegade-science',
        type: 'route-link',
        href: 'renegade-science',
        content: 'Learn More',
      },
    },

    {
      id: 'card-renegade-reach',
      headline: 'renegade reach',
      content: `<p class="p2">
        We create pathways through the healthcare system for distributing diagnostics to people who
        need them most. We do so through our relationships with Community Groups, Hospitals, Clinics,
        and Research Institutions.
        <br /><br />
        <strong>
          By opening pathways through the system, everyone receives better healthcare.
        </strong>
      </p>`,
      color: `magenta-100`,
      link: {
        id: 'link-renegade-reach',
        type: 'route-link',
        href: 'renegade-reach',
        content: 'Learn More',
      },
    },
  ]

  // Methods
  const getBaseDimension = (dimension: number) => {
    return Math.round(dimension / 3)
  }
</script>

<style setup lang="scss">
  #trusted-partners {
    min-height: 171.3rem;

    background: linear-gradient(
      180deg,
      $--color-theme-white 0%,
      $--color-theme-light-blue-100 100%
    );
    background-size: contain;

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
      padding: 4.5rem $--width-gutter-padding;
      min-height: 24rem;
      z-index: 2;
    }

    #shape-trusted-partners {
      margin-top: -79.1rem;

      img {
        max-width: 295.9rem;
      }
    }

    #for-health {
      &.container {
        justify-content: center;
        min-height: 21.6rem;
      }

      .word-rotator {
        display: flex;
        align-items: flex-end;
        column-gap: 1rem;

        span {
          color: $--color-theme-white;
          font: $--font-secondary-400;
          font-size: 6.4rem;
          // line-height: 1;

          // health
          &:nth-of-type(3n) {
          }

          // for
          &:nth-of-type(3n + 1) {
          }

          // everyone's (variable)
          &:nth-of-type(3n + 2) {
            color: $--color-theme-sky-blue-100;
            font-size: 9.6rem;
            letter-spacing: -0.2rem;
            line-height: 11.5rem;
          }
        }
      }
    }

    #our-focus {
      &.container {
        background-image: url(https://res.cloudinary.com/renegade-bio/image/upload/graphics/renegade-pathway);
        background-position: 130% 2.5rem;
        background-repeat: no-repeat;
        background-size: auto 140rem;
        padding: 12.4rem $--width-gutter-padding;

        row-gap: 2rem;
      }
    }
  }
</style>
