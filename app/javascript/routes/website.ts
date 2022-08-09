const AboutUs = () => import('@/pages/website/AboutUsPage.vue');
const Accreditations = () => import('@/pages/website/AccreditationsPage.vue');
const AnnualReport = () => import('@/pages/website/AnnualReportPage.vue');
const BillingNotice = () => import('@/pages/website/BillingNoticePage.vue');
const CardiovascularDisease = () => import('@/pages/website/CardiovascularDiseasePage.vue');
const CaseStudies = () => import('@/pages/website/CaseStudiesPage.vue');
const ContactUs = () => import('@/pages/website/ContactUsPage.vue');
const Covid19Solutions = () => import('@/pages/website/Covid19SolutionsPage.vue');
const DiagnosticSolutions = () => import('@/pages/website/DiagnosticSolutionsPage.vue');
const Home = () => import('@/pages/website/HomePage.vue');
const HowWeWork = () => import('@/pages/website/HowWeWorkPage.vue');
// const Index = () => import('@/pages/website/IndexPage.vue');
const InfectiousDisease = () => import('@/pages/website/InfectiousDiseasePage.vue');
const InnovationInDiagnostics = () => import('@/pages/website/InnovationInDiagnosticsPage.vue');
const Login = () => import('@/pages/website/LoginPage.vue');
const PrivacyPolicy = () => import('@/pages/website/PrivacyPolicyPage.vue');
const ReproductiveHealth = () => import('@/pages/website/ReproductiveHealthPage.vue');
const Signup = () => import('@/pages/website/SignupPage.vue');
const SupportAndFaq = () => import('@/pages/website/SupportAndFaqPage.vue');
const TermsAndConditions = () => import('@/pages/website/TermsAndConditionsPage.vue');
const WhoWeAre = () => import('@/pages/website/WhoWeArePage.vue');

const routes = [
  // About Us
  {
    path: '/about-us',
    name: 'about-us',
    components: {
      default: AboutUs,
    },
  },

  // Accreditations
  {
    path: '/accreditations',
    name: 'accreditations',
    components: {
      default: Accreditations,
    },
  },

  // AnnualReport
  {
    path: '/annual-report',
    name: 'annual-report',
    components: {
      default: AnnualReport,
    },
  },

  // BillingNotice
  {
    path: '/billing-notice',
    name: 'billing-notice',
    components: {
      default: BillingNotice,
    },
  },

  // CardiovascularDisease
  {
    path: '/cardiovascular-disease',
    name: 'cardiovascular-disease',
    components: {
      default: CardiovascularDisease,
    },
  },

  // Case Studies
  {
    path: '/case-studies',
    name: 'case-studies',
    components: {
      default: CaseStudies,
    },
  },

  // Contact Us
  {
    path: '/contact-us',
    name: 'contact-us',
    components: {
      default: ContactUs,
    },
  },

  // COVID-19 Solutions
  {
    path: '/covid-19-solutions',
    name: 'covid-19-solutions',
    components: {
      default: Covid19Solutions,
    },
  },

  // Diagnostic Solutions
  {
    path: '/diagnostic-solutions',
    name: 'diagnostic-solutions',
    components: {
      default: DiagnosticSolutions,
    },
  },

  // Home
  {
    path: '/',
    name: 'home',
    components: {
      default: Home,
    },
  },

  // How We Work
  {
    path: '/how-we-work',
    name: 'how-we-work',
    components: {
      default: HowWeWork,
    },
  },

  // Index
  // {
  //   path: '/',
  //   name: 'index',
  //   components: {
  //     default: Index,
  //   },
  // },

  // Infectious Disease
  {
    path: '/infectious-disease',
    name: 'infectious-disease',
    components: {
      default: InfectiousDisease,
    },
  },

  // Innovation in Diagnostics
  {
    path: '/innovation-in-diagnostics',
    name: 'innovation-in-diagnostics',
    components: {
      default: InnovationInDiagnostics,
    },
  },

  // Login
  {
    path: '/login',
    name: 'login',
    components: {
      default: Login,
    },
  },

  // Privacy Policy
  {
    path: '/privacy-policy',
    name: 'privacy-policy',
    components: {
      default: PrivacyPolicy,
    },
  },

  // Reproductive Health
  {
    path: '/reproductive-health',
    name: 'reproductive-health',
    components: {
      default: ReproductiveHealth,
    },
  },

  // Sign Up
  {
    path: '/signup',
    name: 'signup',
    components: {
      default: Signup,
    },
  },

  // Support & FAQ
  {
    path: '/support-and-faq',
    name: 'support-and-faq',
    components: {
      default: SupportAndFaq,
    },
  },

  // Terms & Conditions
  {
    path: '/terms-and-conditions',
    name: 'terms-and-conditions',
    components: {
      default: TermsAndConditions,
    },
  },

  // Who We Are
  {
    path: '/who-we-are',
    name: 'who-we-are',
    components: {
      default: WhoWeAre,
    },
  },
];

export default routes;
