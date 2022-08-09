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
      <div style="width: 300px; padding: 30px">Header: {{ item }}</div>
      <div style="padding: 30px">Second element</div>
    </template>
    <template #before-nav>
      <li class="logo">
        <router-link
          :to="{
            name: 'home',
          }"
        >
          <img
            src="https://res.cloudinary.com/renegade-bio/image/upload/renegade.bio-logo.svg"
            title="renegade.bio"
            alt="renegade.bio logo"
          />
        </router-link>
      </li>
    </template>
    <template #title="data">
      <!--Display menu items through slots-->
      {{ data.item.title }}
    </template>
    <template #after-nav>
      <!--Mobile Burger, buttons, etc-->

      <li id="desktop-group" class="vsm-mob-hide">
        <!-- Doctor Portal -->
        <a id="main-nav-doctor-portal" href="#" target="_blank">
          <img
            src="https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-doctor-portal.svg"
            title="Doctor Portal"
            alt="Doctor Portal icon"
          />
        </a>

        <!-- Contact Us -->
        <router-link
          id="main-nav-contact-us"
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
            element: 'a', // router-link
            // offset the position of the dropdown menu
            // align: 'center',
            // menu item can accept all attributes
            attributes: {
              id: 'main-nav-how-we-work',
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
            // just extra properties in the object
            customAttribute: true,
          },

          // Diagnostic Solutions
          {
            title: 'Diagnostic Solutions',
            dropdown: 'diagnostic-solutions',
            element: 'a', // router-link
            attributes: {
              id: 'main-nav-diagnostic-solutions',
              'data-big': 'yes',
            },
            listeners: {
              mouseover: (event: MouseEvent) => {
                console.log('diagnostic-solutions', event);
              },
            },
            customAttribute: true,
          },

          // Case Studies
          {
            title: 'Case Studies',
            dropdown: 'case-studies',
            element: 'a', // router-link
            attributes: {
              id: 'main-nav-case-studies',
              'data-big': 'yes',
            },
            listeners: {
              mouseover: (event: MouseEvent) => {
                console.log('case-studies', event);
              },
            },
            customAttribute: true,
          },

          // Who We Are
          {
            title: 'Who We Are',
            dropdown: 'who-we-are',
            element: 'a', // router-link
            attributes: {
              id: 'main-nav-who-we-are',
              'data-big': 'yes',
            },
            listeners: {
              mouseover: (event: MouseEvent) => {
                console.log('who-we-are', event);
              },
            },
            customAttribute: true,
          },

          // COVID-19 Solutions
          {
            title: 'COVID-19 Solutions',
            dropdown: 'covid-19-solutions',
            element: 'a', // router-link
            attributes: {
              id: 'main-nav-covid-19-solutions',
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
          //     id: 'main-nav-doctor-portal',
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
      }

      .vsm-link-container {
        display: flex;
        align-content: center;
        align-items: center;
        flex: 2 1 auto;
        justify-content: space-between;

        .vsm-link {
          display: flex;

          color: $--color-theme-background-secondary;
          font: $--font-primary-600;
          font-size: 1.5rem;
          padding: 0.4rem 0 0 0;

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

    #desktop-group {
      display: flex;
      flex: 1 1 auto;
      justify-content: flex-end;
    }

    #main-nav-doctor-portal {
      display: flex;
      flex: 0 0 max-content;

      // background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-doctor-portal.svg');
      // background-size: cover;
      width: 2.1rem;
      height: 2.4rem;

      padding: 0 1.7rem;
    }

    #main-nav-contact-us {
      margin-top: -1rem;
    }
  }
</style>
