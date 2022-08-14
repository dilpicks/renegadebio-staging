<template>
  <section id="case-studies">
    <div class="container">
      <div class="copy-block">
        <h2 class="h1">{{ headline }}</h2>
      </div>
      <Cards :cards="cards" />
    </div>
  </section>
</template>

<script setup lang="ts">
  import Cards from '@/components/Cards.vue'
  import { ICard } from '@/types/general'

  const headline = 'Case Studies'
  const cards: Array<ICard> = [
    {
      id: 'card-covid-19',
      prehead: 'COVID-19',
      headline: 'Umoja Health',
      content: `
        <p class="p2">
          Working together with Umoja Health to expand COVID-19 testing, we were able to tailor our diagnostic distribution strategy to reflect the needs of the community, increasing testing across East Oakland, California.
        </p>
      `,
      image: {
        id: 'card-image-case-study-covid-19-umoja-health',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
        title: 'COVID-19 Umoja Health Case Study',
        alt: 'COVID-19 Umoja Health Case Study',
        width: 1224,
        height: 711,
      },
      link: {
        id: 'link-case-studies',
        type: 'route-link',
        href: 'case-studies',
        content: 'See Case Study',
      },
    },

    {
      id: 'card-preeclampsia',
      prehead: 'Preeclampsia',
      headline: 'Metabolomic Dx',
      content: `
        <p class="p2">
          In partnership with Metabolomic Dx, renegade.bio developed PrePsia USA, a comprehensive assessment of biomarkers that allows detection of preeclampsia risks as early as 13 weeks of pregnancy.
        </p>
      `,
      image: {
        id: 'card-image-case-study-preeclampsia-metabolomic-dx',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
        title: 'Preeclampsia Metabolomic Dx Case Study',
        alt: 'Preeclampsia Metabolomic Dx Case Study',
        width: 1224,
        height: 711,
      },
      link: {
        id: 'link-case-studies',
        type: 'route-link',
        href: 'case-studies',
        content: 'See Case Study',
      },
    },

    {
      id: 'card-fertility-health',
      prehead: 'Fertility Health',
      headline: 'Microgenesis',
      content: `
        <p class="p2">
          Microgenesis transforms fertility health with unparalleled analysis and support of a balanced vaginal microbiome. Together, we’re able to offer a novel and more accessible pathway to parenthood.
        </p>
      `,
      image: {
        id: 'card-image-case-study-fertility-health-microgenesis',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
        title: 'Fertility Health Microgenesis Case Study',
        alt: 'Fertility Health Microgenesis Case Study',
        width: 1224,
        height: 711,
      },
      link: {
        id: 'link-case-studies',
        type: 'route-link',
        href: 'case-studies',
        content: 'See Case Study',
      },
    },
  ]
</script>

<style setup lang="scss">
  #case-studies {
    background-color: $--color-theme-white;
    min-height: 57.3rem;

    .container {
      row-gap: $--height-headline-gap;
    }

    .h1 {
      display: flex;
      color: $--color-theme-navy-100;
    }
  }
</style>
