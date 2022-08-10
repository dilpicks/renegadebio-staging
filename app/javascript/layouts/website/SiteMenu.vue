<template>
  <vsm-menu
    :menu="menu"
    element="div"
    handler="hover"
    align="center"
    class="container"
    :screen-offset="10"
    :dropdown-offset="0"
    @open-dropdown="onOpenDropdown"
    @close-dropdown="onCloseDropdown"
  >
    <template #default="{ item }">
      <!--Dropdown content of each menu item with a "dropdown" property-->
      <!--You can replace it with a separate component if each menu item has its own style-->
      <!--Necessarily need to have at least one element within the slot-->
      <!--An alternate background will be applied from the 2nd element-->
      <ul
        :style="`--item-count: ${
          item.dropdownContainerItems.length <= 4 ? item.dropdownContainerItems.length : 4
        }`"
      >
        <li
          v-for="subMenuItem in item.dropdownContainerItems"
          :id="`sub-menu-item-${subMenuItem.id}`"
          :key="subMenuItem.id"
        >
          <router-link
            :id="`sub-nav-link-${subMenuItem.id}`"
            :to="{
              name: subMenuItem.routeName,
            }"
          >
            <h4 class="h4">{{ subMenuItem.title }}</h4>
            <p class="p4">{{ subMenuItem.content }}</p>
          </router-link>
        </li>
      </ul>
      <!-- <div style="width: 300px; padding: 30px; color: #fff">Header: {{ item }}</div>
      <div style="padding: 30px">Second element</div> -->
    </template>
    <template #before-nav>
      <li class="logo">
        <router-link
          :to="{
            name: 'home',
          }"
        >
          <img
            src="https://res.cloudinary.com/renegade-bio/image/upload/branding/renegade-bio-logo.svg"
            title="renegade.bio"
            alt="renegade.bio logo"
          />
        </router-link>
      </li>
    </template>
    <template #title="data">
      <!--Display menu items through slots-->
      <router-link
        :id="`main-nav-link-${data.item.attributes.id}`"
        :to="{
          name: data.item.attributes.routeName,
        }"
      >
        {{ data.item.title }}
      </router-link>
    </template>
    <template #after-nav>
      <!--Mobile Burger, buttons, etc-->
      <li id="desktop-group" class="vsm-mob-hide">
        <!-- Doctor Portal -->
        <a id="main-nav-link-doctor-portal" href="#" target="_blank">
          <img
            src="https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-doctor-portal.svg"
            title="Doctor Portal"
            alt="Doctor Portal icon"
          />
        </a>

        <!-- Contact Us -->
        <router-link
          id="main-nav-link-contact-us"
          class="button button-pill"
          :to="{
            name: 'contact-us',
          }"
        >
          Contact Us
        </router-link>
      </li>
      <!--Set "display: block" for the .vsm-mob-show class to display content-->
      <vsm-mob>Mobile Content</vsm-mob>
    </template>
  </vsm-menu>
</template>

<script lang="ts">
  import { defineComponent } from 'vue';
  /* eslint-disable */

  // Inside #after-nav and #before-nav it is recommended to use
  // to maintain the correct HTML structure:
  //   <li><!--Content--></li>

  export default defineComponent({
    data() {
      return {
        menu: [
          // Who We Are
          {
            // display menu item (can be overridden with title slot)
            title: 'How We Work',
            // this element now has dropdown content
            dropdown: 'how-we-work',
            // don't want a button element? Pass HTMLElement or global component
            // (pass only as a string, component must be globally accessible)
            element: 'div', // router-link
            // offset the position of the dropdown menu
            // align: 'center',
            // menu item can accept all attributes
            attributes: {
              id: 'main-nav-link-how-we-work',
              routeName: 'how-we-work',
              // I want more classes! No problem
              // string, array, object, not matter
              class: ['my-class1', { 'my-class2': true }],
              // Custom attributes
              'data-big': 'yes',
            },
            // add some events?
            listeners: {
              // all possible native events
              mouseover: (event: MouseEvent) => {
                console.log('how-we-work hover', event);
              },
            },
            dropdownContainerItems: [
              {
                id: 'renegade-science',
                title: 'renegade Science',
                content: 'Developing diagnostics in-house and in partnership with other biotechs',
                routeName: 'renegade-science',
              },
              {
                id: 'renegade-reach',
                title: 'renegade Reach',
                content: 'Increasing access to diagnostics, from pre-natal to end-of-life',
                routeName: 'renegade-reach',
              },
            ],
            // just extra properties in the object
            customAttribute: true,
          },

          // Diagnostic Solutions
          {
            title: 'Diagnostic Solutions',
            dropdown: 'diagnostic-solutions',
            element: 'div', // router-link
            attributes: {
              id: 'main-nav-link-diagnostic-solutions',
              routeName: 'diagnostic-solutions',
              'data-big': 'yes',
            },
            listeners: {
              mouseover: (event: MouseEvent) => {
                console.log('diagnostic-solutions', event);
              },
            },
            dropdownContainerItems: [
              {
                id: 'infectious-diseases',
                title: 'Infectious Diseases',
                content: 'Creating tests to address COVID-19, and improve Sexual Health',
                routeName: 'infectious-diseases',
              },
              {
                id: 'reproductive-health',
                title: 'Reproductive Health',
                content:
                  'Developing solutions to help reduce pregnancy related morbidity and mortality',
                routeName: 'reproductive-health',
              },
              {
                id: 'cardiovascular-health',
                title: 'Cardiovascular',
                content: 'Creating diagnostics to help reduce the risk of cardiovascular disease',
                routeName: 'cardiovascular-health',
              },
              {
                id: 'innovation-in-diagnostics',
                title: 'Innovations in Diagnostics',
                content: 'Conducting R&D to explore human and planetary diagnostic solutions',
                routeName: 'innovation-in-diagnostics',
              },
              {
                id: 'test-directory',
                title: 'Test Directory',
                content: 'Find the right diagnostics for your patients',
                routeName: 'test-directory',
              },
            ],
            customAttribute: true,
          },

          // Case Studies
          {
            title: 'Case Studies',
            dropdown: 'case-studies',
            element: 'div', // router-link
            attributes: {
              id: 'main-nav-link-case-studies',
              routeName: 'case-studies',
              'data-big': 'yes',
            },
            listeners: {
              mouseover: (event: MouseEvent) => {
                console.log('case-studies', event);
              },
            },
            dropdownContainerItems: [
              {
                id: 'umoja-health',
                title: 'Umoja Health',
                content: 'Increasing COVID-19 testing in an East Oakland community',
                routeName: 'umoja-health',
              },
              {
                id: 'metabolomic',
                title: 'Metabolomic',
                content: 'Partnered to make early detection of preeclampsia risks a reality',
                routeName: 'metabolomic',
              },
              {
                id: 'microgenesis',
                title: 'Microgenesis',
                content: 'Bringing a novel fertility health test to market in the U.S.',
                routeName: 'microgenesis',
              },
            ],
            customAttribute: true,
          },

          // Who We Are
          {
            title: 'Who We Are',
            dropdown: 'who-we-are',
            element: 'div', // router-link
            attributes: {
              id: 'main-nav-link-who-we-are',
              routeName: 'who-we-are',
              'data-big': 'yes',
            },
            listeners: {
              mouseover: (event: MouseEvent) => {
                console.log('who-we-are', event);
              },
            },
            dropdownContainerItems: [
              {
                id: 'about-us',
                title: 'About Us',
                content:
                  'We’re Scientists + We’re Activists: From our origins, to our team and our work',
                routeName: 'about-us',
              },
              {
                id: 'annual-report',
                title: 'Annual Report',
                content:
                  'An annual look at progress on our mission as a Public Benefit Corporation',
                routeName: 'annual-report',
              },
            ],
            customAttribute: true,
          },

          // COVID-19 Solutions
          {
            title: 'COVID-19 Solutions',
            // dropdown: 'covid-19-solutions',
            element: 'div', // router-link
            attributes: {
              id: 'main-nav-link-covid-19-solutions',
              routeName: 'covid-19-solutions',
              'data-big': 'yes',
            },
            listeners: {
              mouseover: (event: MouseEvent) => {
                console.log('covid-19-solutions', event);
              },
            },
            customAttribute: true,
          },

          // Doctor Portal
          // {
          //   title: 'Doctor Portal',
          //   attributes: {
          //     id: 'main-nav-link-doctor-portal',
          //     href: '#',
          //     target: '_blank'
          //   }
          // }
        ],
      };
    },
    methods: {
      onOpenDropdown() {
        console.log('onOpenDropdown');
      },
      onCloseDropdown() {
        console.log('onCloseDropdown');
      },
    },
  });
</script>

<style setup lang="scss">
  @import 'vue-stripe-menu/dist/vue-stripe-menu.css';

  #site-header {
    // Library styles
    .vsm-menu {
      display: flex;
      // max-width: 1024px;
      width: 100%;
      margin: 0 auto;

      z-index: 1000;
    }

    // .vsm-nav {
    //   margin: 0 10px;
    // }

    // .vsm-link-container {
    //   display: flex;
    //   flex: 1 1 auto;
    //   justify-content: center;
    // }

    @media screen and (max-width: 768px) {
      .vsm-mob-show {
        display: block;
      }
      .vsm-mob-hide {
        display: none;
      }
      .vsm-mob-full {
        flex-grow: 1;
      }
    }

    .vsm-root {
      align-items: stretch;
      flex: 1 1 auto;
      justify-content: space-between;
    }

    // Custom Styles
    .vsm-nav {
      background: transparent;

      height: 8rem;

      display: flex;
      align-items: center;
      flex: 1 1 auto;
      justify-content: space-between;

      .logo {
        display: flex;
        flex: 1 1 auto;

        img {
          width: 18rem;
          height: auto;
        }
      }

      .vsm-link-container {
        display: flex;
        align-content: center;
        align-items: center;
        flex: 0 1 auto;
        justify-content: flex-start;
        column-gap: 3rem;

        .vsm-link {
          display: flex;

          color: $--color-theme-background-secondary;
          font: $--font-primary-600;
          font-size: 1.5rem;
          padding: 1rem 0 0 0;

          height: 4.4rem;

          position: relative;
          white-space: nowrap;

          &:after {
            display: flex;
            align-self: flex-end;
            flex: 1 1 auto;

            content: '';
            background-color: $--color-menu-item-hover;
            opacity: 0;

            position: absolute;
            width: 100%;
            height: 0.7rem;

            transition: all 0.25s ease-out;
          }

          &.active,
          &:active {
            &:after {
              opacity: 1;
            }
          }

          &:hover {
            cursor: pointer;

            &:after {
              opacity: 1;
            }
          }
        }
      }
    }

    .vsm-dropdown {
      top: 4.4rem;

      .vsm-background {
        background-color: transparent;
        box-shadow: none;
        // border-radius: 2rem;
      }

      .vsm-background-alt {
        display: none;
      }

      .vsm-arrow {
        background-color: transparent;
      }

      .vsm-dropdown-container {
        padding-top: 3rem;
        min-height: 24.6rem;
        // height: 38rem;
        border-radius: 2rem;
        overflow: visible !important;

        .vsm-dropdown-section {
          display: none;
          flex: 0 1 auto;
          min-height: 24.6rem;

          &.vsm-active {
            display: flex;
            // min-height: 35rem;
          }

          .vsm-dropdown-content {
            // background-color: rgba($--color-theme-navy-100, 0.95);
            // border-radius: 2rem;

            ul {
              min-width: calc((var(--item-count) * 26.4rem) + calc(var(--item-count) * 3rem));
              width: auto;
              // min-height: 21.6rem;
              // padding: 5rem 4rem;

              background-color: rgba($--color-theme-navy-100, 0.95);
              border-radius: 2rem;

              display: flex;
              align-content: flex-start;
              align-items: flex-start;
              flex-wrap: wrap;
              column-gap: 3rem;
              row-gap: 2rem;

              li {
                display: flex;
                flex-direction: column;
                flex: 0 1 26.4rem;

                margin-top: 5rem;
                margin-bottom: 3rem;
                min-width: 26.4rem;
                padding-right: 3rem;

                border-color: $--color-theme-white;
                border-style: solid;
                border-width: 0 1px 0 0;

                // .h4 {
                //   text-transform: lowercase;
                // }

                .p4 {
                  color: $--color-theme-white;
                  margin-top: 1rem;
                }

                &:first-of-type {
                  padding-left: 4rem;
                }

                &:nth-of-type(3n) {
                  .h4 {
                    // color: $--color-theme-eggplant-60;
                    color: $--color-theme-magenta-100;
                  }
                }

                &:nth-of-type(3n + 1) {
                  .h4 {
                    // color: $--color-theme-sky-blue-100;
                    // color: $--color-theme-magenta-100;
                    color: $--color-theme-eggplant-60;
                  }
                }

                &:nth-of-type(3n + 2) {
                  .h4 {
                    // color: $--color-theme-magenta-100;
                    color: $--color-theme-sky-blue-100;
                  }
                }

                &:nth-of-type(4n) {
                }

                &:nth-of-type(4n),
                &:last-of-type {
                  border-width: 0;
                  padding-right: 0;
                  flex: 0 1 23.4rem;
                  min-width: 23.4rem;
                }

                &:nth-of-type(5n) {
                  flex: 1 1 100%;
                  margin-top: 0;
                  margin-bottom: 0;
                  padding: 3.7rem 4rem;
                  background-color: rgba($--color-theme-white, 0.1);
                }
              }
            }
          }
        }
      }
    }

    #desktop-group {
      display: flex;
      align-items: center;
      flex: 1 1 auto;
      justify-content: flex-end;
    }

    #main-nav-link-doctor-portal {
      display: flex;
      flex: 0 0 max-content;

      // background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-doctor-portal.svg');
      // background-size: cover;
      width: 2.1rem;
      height: 2.4rem;

      padding: 0 1.7rem;
    }

    #main-nav-link-contact-us {
      margin-top: -0.5rem;
    }
  }
</style>
