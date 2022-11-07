<template>
  <div :id="`${parent.id}-page`" class="page">
    <HeroWhoWeAre :data="heroData" :parent="parent" />
    <Manifesto :data="manifestoData" :parent="parent" />
    <PublicBenefitCorporation :data="publicBenefitCorporationData" :parent="parent" />
    <Timeline :data="timelineData" :parent="parent" />
    <TeamBios :data="teamBiosData" :parent="parent" />
    <Investors :data="investorsData" :parent="parent" />
    <MailingListSignUp :data="mailingListData" :parent="parent" />
  </div>
</template>

<script setup lang="ts">
  import {
    computed,
    // defineProps,
    // defineComponent,
    onMounted,
    // reactive,
    // ref,
  } from 'vue'

  // import { useRoute } from 'vue-router'
  import { storeToRefs } from 'pinia'

  import HeroWhoWeAre from '@/partials/website/pages/who_we_are/HeroWhoWeArePartial.vue'
  import Manifesto from '@/partials/website/pages/who_we_are/ManifestoPartial.vue'
  import PublicBenefitCorporation from '@/partials/website/pages/who_we_are/PublicBenefitCorporationPartial.vue'
  import Timeline from '@/partials/website/pages/who_we_are/TimelinePartial.vue'
  import TeamBios from '@/partials/website/pages/who_we_are/TeamBiosPartial.vue'
  import Investors from '@/partials/website/pages/who_we_are/InvestorsPartial.vue'
  import MailingListSignUp from '@/partials/website/shared/MailingListSignUpPartial.vue'

  import { ICard, IPageData } from '@/types/general'
  import { showToast } from '@/utils/showToast'
  import { usePeopleStore } from '@/stores/people.store'

  const parent: IPageData = {
    id: 'who-we-are',
    title: 'Who We Are',
  }

  const peopleStore = usePeopleStore()
  // eslint-disable-next-line prettier/prettier
  const { featuredTeamMembers } = storeToRefs(peopleStore)

  // ===========================================================================
  // Hero Section Data
  // ===========================================================================
  const heroData: IPageData = {
    id: `${parent.id}-section-hero-who-we-are`,
    copyBlocks: [
      {
        classes: ['for-health-block'],
        content: `
          <h2 class="p2-bold word-rotator">
            <span>renegade is</span>
            <!-- <span>unpretentious science</span> -->
            <!-- <span>giving <em>you</em> access to <em>your</em> health data</span> -->
            <!-- <span>developing cutting edge diagnostics</span> -->
            <!-- <!-- <span>helping biotech startups innovate</span> -->
            <!-- <span>creating pathways in our healthcare systeme</span> -->
            <span>building grassroots community partnerships</span>
            <!-- <span>demanding better health, and healthcare</span> -->
            <span>for everyone</span>
          </h2>
        `,
      },
    ],
    shapes: [
      {
        id: 'shape-hero-who-we-are',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-background-lrg.svg',
        width: 2959,
        height: 1865,
        renderAsSVG: true,
      },
    ],
  }

  // ===========================================================================
  // Manifesto Section Data
  // ===========================================================================
  const manifestoData: IPageData = {
    id: `manifesto`,
    copyBlocks: [
      // in how we run our company.
      {
        classes: [],
        content: `
          <h5 class="prehead">
            We are renegade
          </h6>

          <h2 class="h1 magenta-100">
            in how we run our company.
          </h2>

          <ul class='unmarked-list'>
            <li class="p2">We challenge systems and reject the norm.</li>
            <li class="p2">We celebrate diversity.</li>
            <li class="p2">We focus on community.</li>
            <li class="p2">We lead with integrity.</li>
          </ul>
        `,
      },

      // in our approach to science.
      {
        classes: [],
        content: `
          <h5 class="prehead">
            We are renegade
          </h6>

          <h2 class="h1 sky-blue-100">
            in our approach to science.
          </h2>

          <ul class='unmarked-list'>
            <li class="p2">We demand radical transparency with data.</li>
            <li class="p2">We’re devoted to personal privacy.</li>
            <li class="p2">We push for innovation.</li>
            <li class="p2">We bring novel diagnostics to life.</li>
          </ul>
        `,
      },

      // in how we reach people.
      {
        classes: [],
        content: `
          <h5 class="prehead">
            We are renegade
          </h6>

          <h2 class="h1 eggplant-100">
            in how we run our company.
          </h2>

          <ul class='unmarked-list'>
            <li class="p2">We are solution-oriented.</li>
            <li class="p2">We seek out distribution channels for diagnostics.</li>
            <li class="p2">We create pathways.</li>
            <li class="p2">We are your health advocate.</li>
            <li class="p2">We bring clarity to health education.</li>
          </ul>
        `,
      },

      // And we are who we serve.
      {
        classes: ['align-center'],
        content: `
          <h2 class="h1 magenta-100">
            And we are who we serve.
          </h2>

          <p class="p2 center">
            We have been part of communities that are underfunded, underseen, and underserved. We’ve been disenfranchised. We’re diverse, we’re Queer and we support all things LGBTQ+. We’re women, we’re People of Color. We’re Activists, we’re Scientists. We’re part of the San Francisco Bay Area community.
          </p>

          <h2 class="h2 navy-100 center">
            And we’re here to make a difference.
          </h2>
        `,
      },
    ],
  }

  // ===========================================================================
  // Public Benefit Corporation Section Data
  // ===========================================================================
  const publicBenefitCorporationData: IPageData = {
    id: `${parent.id}-section-public-benefit-corporation`,
    copyBlocks: [
      {
        id: 'content-frame-public-benefit-corporation',
        classes: ['content-frame', 'padded', 'align-center'],
        content: `
          <h2 class="h1 sky-blue-100">
            A Proud Public Benefit Corporation
          </h2>

          <p class="p2">
            As a Public Benefit Corporation, we are really a People Benefit Company – as we put the person at the center of all we do.
          </p>

          <p class="p2">
            <strong>As a PBC, we are committed to the following:</strong>
          </p>

          <ul class="custom-list">
            <li>
              <h3 class="h2 custom-list-marker">1</h3>
              <p class="p2"><strong>To bring cutting edge assays to life</strong></p>
            </li>
            <li>
              <h3 class="h2 custom-list-marker">2</h3>
              <p class="p2"><strong>To educate and elevate the Clinical Laboratory Sciences & Scientists</strong></p>
            </li>
            <li>
              <h3 class="h2 custom-list-marker">3</h3>
              <p class="p2"><strong>To increase access to testing by reaching people at home</strong></p>
            </li>
          </ul>
        `,
      },
    ],
  }

  // ===========================================================================
  // Timeline Section Data
  // ===========================================================================
  const timelineData: IPageData = {
    id: `${parent.id}-section-timeline`,
    // copyBlocks: [
    //   {
    //     id: 'content-frame-public-benefit-corporation',
    //     classes: ['content-frame', 'padded', 'align-center'],
    //     content: `
    //       <h2 class="h1 sky-blue-100">
    //         A Proud Public Benefit Corporation
    //       </h2>

    //       <p class="p2">
    //         As a Public Benefit Corporation, we are really a People Benefit Company – as we put the person at the center of all we do.
    //       </p>

    //       <p class="p2">
    //         <strong>As a PBC, we are committed to the following:</strong>
    //       </p>

    //       <ul class="custom-list">
    //         <li>
    //           <h3 class="h2 custom-list-marker">1</h3>
    //           <p class="p2"><strong>To bring cutting edge assays to life</strong></p>
    //         </li>
    //         <li>
    //           <h3 class="h2 custom-list-marker">2</h3>
    //           <p class="p2"><strong>To educate and elevate the Clinical Laboratory Sciences & Scientists</strong></p>
    //         </li>
    //         <li>
    //           <h3 class="h2 custom-list-marker">3</h3>
    //           <p class="p2"><strong>To increase access to testing by reaching people at home</strong></p>
    //         </li>
    //       </ul>
    //     `,
    //   },
    // ],
  }

  // ===========================================================================
  // Team Bios Section Data
  // ===========================================================================
  const teamBiosData = computed(() => {
    const pageData: IPageData = {
      id: `${parent.id}-section-team-bios`,
      copyBlocks: [
        {
          classes: ['team-bios-block'],
          content: `
            <h2 class="h1 eggplant-100">
              Our Team
            </h2>
          `,
        },
      ],
      // cards: featuredTeamMembers.value,
      cards: featuredTeamMembers.value.map((person) => {
        const personAsProfileCard: ICard = {
          id: person.id,
          componentType: 'profile-card',
          attributes: {
            name: person.attributes.name,
            title: person.attributes.title,
            content: person.attributes.content,
            image: person.attributes.image,
            link: person.attributes.link,
          },
        }

        return personAsProfileCard
      }),
    }

    return pageData
  })

  // ===========================================================================
  // Donations Section Data
  // ===========================================================================
  const investorsData: IPageData = {
    id: `${parent.id}-section-investors`,
    copyBlocks: [
      {
        id: 'content-frame-donation-recipients',
        classes: ['content-frame', 'padded', 'align-center'],
        content: `
          <h2 class="h2 sky-blue-100">
            Renegade.bio is supported by a community of VC firms and outstanding angel investors.
          </h2>
        `,
      },
    ],
    images: [
      // IndieBio
      {
        id: 'indie-bio-logo',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/indie-bio-logo.svg',
        title: 'IndieBio',
        alt: 'IndieBio logo',
        width: 164,
        height: 32,
      },

      // SOSV
      {
        id: 'sosv-logo',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/sosv-logo.svg',
        title: 'SOSV',
        alt: 'SOSV logo',
        width: 132,
        height: 58,
      },
    ],
  }

  // ===========================================================================
  // Mailing List Sign Up Data
  // ===========================================================================
  const mailingListData: IPageData = {
    id: `${parent.id}-section-mailing-list-sign-up`,
    copyBlocks: [
      {
        content: `
          <h3 class="h3 sky-blue-100">Keep up with our latest <strong class="magenta-100">renegade.bio</strong> news</h3>
        `,
      },
    ],
  }

  // ===========================================================================
  // Methods
  // ===========================================================================
  const hydrate = () => {
    // console.log(`Fetching Data for ${route?.params}...`)

    peopleStore.index().catch((error) => {
      showToast(error, 'error')
    })
  }

  // ===========================================================================
  // Mounted
  // ===========================================================================
  onMounted(() => {
    // console.log('peopleStore: ', peopleStore)

    hydrate()
  })

  // ===========================================================================
  // Created
  // ===========================================================================
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  #who-we-are-page {
    background-color: $--color-theme-background-secondary-dark;
  }

  :deep() {
    .section {
      &.hero {
        @include for-tablet-landscape-up {
          min-height: 47rem;
        }

        .container {
          row-gap: 6rem;

          @include for-phone-lrg-up {
            row-gap: 8rem;
          }

          @include for-tablet-portrait-mid-up {
            row-gap: 15rem;
          }

          .hero-block {
            flex: 0 1 60%;
          }
        }

        #shape-section-hero-header-background {
          left: calc(((2959px - 1304px) / 2) * -1);
          top: -54rem;
          // background-position-y: -50rem;
          background-position-x: center;
          width: 295.9rem;

          // @include for-desktop-mid-up {
          //   left: 34rem;
          //   background-position-y: -20rem;
          // }
        }
      }

      // the +/- 60rem here is to allow for the `.public-benefit-corporation`
      // sections content box to appear in the background gradient of the
      // `.manifesto` section
      &.manifesto {
        padding-bottom: 60rem;
      }

      &.public-benefit-corporation {
        > .container {
          margin-top: -60rem;
        }
      }

      &.timeline {
        display: none !important;
      }
    }

    #lets-innovate-together {
      padding-top: 4.5rem;
    }
  }
</style>
