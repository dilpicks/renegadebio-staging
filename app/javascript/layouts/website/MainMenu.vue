<template>
  <nav class="navbar container">
    <div class="navbar-logo">
      <router-link
        :to="{
          name: 'index',
        }"
      >
        <img
          src="https://res.cloudinary.com/renegade-bio/image/upload/renegade.bio-logo.svg"
          title="renegade.bio"
          alt="renegade.bio logo"
        />
      </router-link>
    </div>
    <ul class="navbar-nav">
      <li v-for="item in menuItems" :key="item.id" class="nav-item">
        <router-link
          v-if="item.routeName"
          :id="item.id"
          :to="{
            name: item.routeName,
          }"
        >
          {{ item.title }}
        </router-link>

        <a v-if="item.link" :id="item.id" :href="item.link" target="_blank" rel="noopener">
          &nbsp;
        </a>
      </li>
    </ul>
  </nav>
</template>

<script setup lang="ts">
  const menuItems = [
    // { title: 'Index', routeName: 'index' },
    { id: 'main-nav-how-we-work', title: 'How We Work', routeName: 'how-we-work' },
    {
      id: 'main-nav-diagnostic-solutions',
      title: 'Diagnostic Solutions',
      routeName: 'diagnostic-solutions',
    },
    { id: 'main-nav-case-studies', title: 'Case Studies', routeName: 'case-studies' },
    { id: 'main-nav-who-we-are', title: 'Who We Are', routeName: 'who-we-are' },
    {
      id: 'main-nav-covid-19-solutions',
      title: 'COVID-19 Solutions',
      routeName: 'covid-19-solutions',
    },
    { id: 'main-nav-doctor-portal', link: '#', title: 'Doctor Portal' },
    // { title: 'Sign in', routeName: 'login' },
    // { title: 'Sign up', routeName: 'signup' },
  ];
</script>

<style setup lang="scss">
  #site-header {
    .navbar {
      height: 8rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      background: transparent;
      box-shadow: 0px 5px 20px -17px rgba(0, 0, 0, 0.34);

      .navbar-logo {
        display: inline-block;
        font-size: 1.5rem;
        text-transform: uppercase;
        font-weight: 700;
        color: $orange;
      }

      .navbar-nav {
        display: flex;
        list-style: none;

        .nav-item {
          display: flex;
          align-content: center;
          align-items: center;

          a {
            color: $--color-theme-background-secondary;
            font: $--font-primary-600;
            font-size: 1.5rem;
            letter-spacing: 1px;
            padding: 20px;
            white-space: nowrap;
            position: relative;

            &:after {
              background-color: $--color-menu-item-hover;

              margin-top: 2.1rem;

              width: 100%;
              height: 0.7rem;

              content: '';
              display: flex;
              flex: 1 1 auto;

              position: absolute;
            }

            &:hover {
              cursor: pointer;
            }
          }
        }
      }
    }

    #main-nav-doctor-portal {
      background-image: url('https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-doctor-portal.svg');
      background-size: cover;
      width: 2.1rem;
      height: 2.4rem;
      padding: 0;
    }
  }
</style>
