<template>
  <nav class="navbar container">
    <div class="navbar-logo">
      <router-link
        id="logo-footer"
        :to="{
          name: 'home',
        }"
      >
        <img
          src="https://res.cloudinary.com/renegade-bio/image/upload/branding/renegade-bio-logo-alt.svg"
          title="renegade.bio"
          alt="renegade.bio logo"
        />
      </router-link>
    </div>

    <ul class="nav-collection">
      <li
        v-for="collection in menu"
        :id="collection.id"
        :key="collection.id"
        class="collection-item"
      >
        <h3 class="collection-header">{{ collection.title }}</h3>
        <ul class="collection-itmes sub-menu">
          <li v-for="item in collection.subMenu" :key="item.id" class="sub-nav-item">
            <router-link
              :to="{
                name: item.routeName,
              }"
            >
              {{ item.title }}
            </router-link>
          </li>
        </ul>
      </li>
    </ul>

    <div class="contact-container">
      <address>
        <h5>Address</h5>
        <p>
          829 Heinz Ave<br />
          Berkely, CA 94710
        </p>
      </address>

      <address>
        <h5>Phone</h5>
        <p><a href="tel:+18554800771" rel="noopener" target="_blank">+1.855.480.0771</a></p>
      </address>
    </div>
  </nav>

  <div id="post-footer">
    <div class="container">
      <div id="copyright">&copy; Renegade Bio Inc, 2022</div>
      <ul id="social-media-links">
        <li>
          <a href="#" rel="noopener" target="_blank">
            <img
              src="https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-social-instagram.svg"
              title="Instagram"
              alt="Instagram Logo"
            />
          </a>
        </li>
        <li>
          <a href="#" rel="noopener" target="_blank">
            <img
              src="https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-social-facebook.svg"
              title="Facebook"
              alt="Facebook Logo"
            />
          </a>
        </li>
        <li>
          <a href="#" rel="noopener" target="_blank">
            <img
              src="https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-social-linkedin.svg"
              title="LinkedIn"
              alt="LinkedIn Logo"
            />
          </a>
        </li>
        <li>
          <a href="#" rel="noopener" target="_blank">
            <img
              src="https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-social-youtube.svg"
              title="YouTube"
              alt="YouTube Logo"
            />
          </a>
        </li>
      </ul>

      <div id="shape-extended-footer" class="shape">
        <img
          src="https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-extended-footer.svg"
        />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
  const menu = [
    // Company
    {
      id: 'menu-collection-company',
      title: 'Company',
      subMenu: [
        {
          id: 'sub-menu-item-about-us',
          title: 'About Us',
          routeName: 'about-us',
        },
        {
          id: 'sub-menu-item-annual-report',
          title: 'Annual Report',
          routeName: 'annual-report',
        },
        {
          id: 'sub-menu-item-case-studies',
          title: 'Case Studies',
          routeName: 'case-studies',
        },
        {
          id: 'sub-menu-item-contact-us',
          title: 'Contact Us',
          routeName: 'contact-us',
        },
        {
          id: 'sub-menu-item-support-and-faq',
          title: 'Support & FAQ',
          routeName: 'support-and-faq',
        },
      ],
    },

    // Solutions
    {
      id: 'menu-collection-solutions',
      title: 'Solutions',
      subMenu: [
        {
          id: 'sub-menu-item-infectious-diseases',
          title: 'Infectious Diseases',
          routeName: 'infectious-diseases',
        },
        {
          id: 'sub-menu-item-cardiovascular-health',
          title: 'Cardiovascular Health',
          routeName: 'cardiovascular-health',
        },
        {
          id: 'sub-menu-item-reproductive-health',
          title: 'Reproductive Health',
          routeName: 'reproductive-health',
        },
        {
          id: 'sub-menu-item-innovation-in-diagnostics',
          title: 'Innovation in Diagnostics',
          routeName: 'innovation-in-diagnostics',
        },
        {
          id: 'sub-menu-item-covid-19',
          title: 'COVID-19',
          routeName: 'covid-19-solutions',
        },
      ],
    },

    // Legal
    {
      id: 'menu-collection-legal',
      title: 'Legal',
      subMenu: [
        {
          id: 'sub-menu-item-terms-and-conditions',
          title: 'Terms & Conditions',
          routeName: 'terms-and-conditions',
        },
        {
          id: 'sub-menu-item-privacy-policy',
          title: 'Privacy Policy',
          routeName: 'privacy-policy',
        },
        {
          id: 'sub-menu-item-accreditations',
          title: 'Accreditations',
          routeName: 'accreditations',
        },
        {
          id: 'sub-menu-item-billing-notice',
          title: 'Billing Notice',
          routeName: 'billing-notice',
        },
      ],
    },
  ]
</script>

<style setup lang="scss">
  #site-footer {
    display: flex;
    flex-wrap: wrap;

    .navbar {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      row-gap: 3.7rem;

      padding: 5.9rem $--width-gutter-padding 4.4rem $--width-gutter-padding;

      .navbar-logo {
        display: flex;
        flex: 1 1 100%;
      }

      .navbar-nav {
        display: flex;
        flex: 1 1 100%;

        .nav-item {
          a {
            color: $--color-theme-white;
            font-size: 13px;
            letter-spacing: 1px;
            padding: 20px;
            text-transform: uppercase;
            white-space: nowrap;

            &:hover {
              color: $--color-menu-item-hover;
              cursor: pointer;
            }
          }
        }
      }
    }

    .nav-collection {
      display: flex;
      column-gap: 12rem;
      flex: 1 1 100%;
      justify-content: flex-start;
    }

    .collection-item {
      display: flex;
      flex-direction: column;
      grid-row-gap: 0.5rem;
    }

    .collection-header {
      color: $--color-brand-secondary;
      font: $--font-secondary-400;
      font-size: 3.2rem;
    }

    .sub-menu {
      display: flex;
      flex-direction: column;
      row-gap: 1.3rem;

      .sub-nav-item {
        color: $--color-theme-white;
        font: $--font-primary-300;
        font-size: 1.3rem;
      }
    }

    #logo-footer {
      img {
        width: 30.7rem;
        height: auto;
      }
    }

    #menu-collection-company {
      .collection-header {
        color: $--color-theme-sky-blue-100;
      }
    }

    #menu-collection-solutions {
      .collection-header {
        color: $--color-theme-magenta-100;
      }
    }

    #menu-collection-legal {
      .collection-header {
        color: $--color-theme-eggplant-60;
      }
    }

    #post-footer {
      display: flex;
      align-items: stretch;
      align-self: flex-end;
      flex: 1 1 100%;

      height: 10.1rem;
      min-height: 10.1rem;
      max-height: 10.1rem;

      background-color: $--color-theme-navy-90;
      color: $--color-theme-white;

      .container {
        flex: 1 1 100%;
        align-content: center;
        align-items: center;
        column-gap: 3.6rem;

        height: 100%;
      }
    }

    #copyright {
      display: flex;
      flex: 0 1 auto;

      font: $--font-primary-300;
      font-size: 1.3rem;
    }

    #social-media-links {
      display: flex;
      column-gap: 1rem;
    }

    #shape-extended-footer {
      margin-left: 61.2rem;
      bottom: 0;
      z-index: 2;

      img {
        max-width: 150rem;
      }
    }

    .contact-container {
      display: flex;
      flex-direction: column;
      row-gap: 2rem;
    }

    address {
      display: flex;
      flex-direction: column;
      row-gap: 0.2rem;

      color: $--color-theme-white;
      font: $--font-primary-300;
      font-size: 1.3rem;

      h5 {
        font: $--font-primary-600;
        text-transform: uppercase;
      }

      p {
        line-height: 2.15rem;
      }
    }
  }
</style>
