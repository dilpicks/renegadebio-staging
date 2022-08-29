const AboutUs = () => import('@/pages/website/AboutUsPage.vue')
const Accreditations = () => import('@/pages/website/AccreditationsPage.vue')
const AnnualReport = () => import('@/pages/website/AnnualReportPage.vue')
const BillingNotice = () => import('@/pages/website/BillingNoticePage.vue')
const CardiovascularHealth = () => import('@/pages/website/CardiovascularHealthPage.vue')
const Careers = () => import('@/pages/website/CareersPage.vue')
const CaseStudies = () => import('@/pages/website/CaseStudiesPage.vue')
const ContactUs = () => import('@/pages/website/ContactUsPage.vue')
const Covid19Solutions = () => import('@/pages/website/Covid19SolutionsPage.vue')
const DiagnosticSolutions = () => import('@/pages/website/DiagnosticSolutionsPage.vue')
const Home = () => import('@/pages/website/HomePage.vue')
const HowWeWork = () => import('@/pages/website/HowWeWorkPage.vue')
// const Index = () => import('@/pages/website/IndexPage.vue');
const InfectiousDiseases = () => import('@/pages/website/InfectiousDiseasesPage.vue')
const InnovationsInDiagnostics = () => import('@/pages/website/InnovationsInDiagnosticsPage.vue')
const Login = () => import('@/pages/website/LoginPage.vue')
const Metabolomic = () => import('@/pages/website/MetabolomicPage.vue')
const Microgenesis = () => import('@/pages/website/MicrogenesisPage.vue')
const PrivacyPolicy = () => import('@/pages/website/PrivacyPolicyPage.vue')
const RenegadeReach = () => import('@/pages/website/RenegadeReachPage.vue')
const RenegadeScience = () => import('@/pages/website/RenegadeSciencePage.vue')
const ReproductiveHealth = () => import('@/pages/website/ReproductiveHealthPage.vue')
const Signup = () => import('@/pages/website/SignupPage.vue')
const SupportAndFaq = () => import('@/pages/website/SupportAndFaqPage.vue')
const TermsAndConditions = () => import('@/pages/website/TermsAndConditionsPage.vue')
const TestDirectory = () => import('@/pages/website/TestDirectoryPage.vue')
const UmojaHealth = () => import('@/pages/website/UmojaHealthPage.vue')
const WhoWeAre = () => import('@/pages/website/WhoWeArePage.vue')

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

  // Annual Report
  {
    path: '/annual-report',
    name: 'annual-report',
    components: {
      default: AnnualReport,
    },
  },

  // Billing Notice
  {
    path: '/billing-notice',
    name: 'billing-notice',
    components: {
      default: BillingNotice,
    },
  },

  // Cardiovascular Health
  {
    path: '/cardiovascular-health',
    name: 'cardiovascular-health',
    components: {
      default: CardiovascularHealth,
    },
  },

  // Careers
  {
    path: '/careers',
    name: 'careers',
    components: {
      default: Careers,
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

  // Infectious Diseases
  {
    path: '/infectious-diseases',
    name: 'infectious-diseases',
    components: {
      default: InfectiousDiseases,
    },
  },

  // Innovations in Diagnostics
  {
    path: '/innovations-in-diagnostics',
    name: 'innovations-in-diagnostics',
    components: {
      default: InnovationsInDiagnostics,
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

  // Metabolomic
  {
    path: '/metabolomic',
    name: 'metabolomic',
    components: {
      default: Metabolomic,
    },
  },

  // Microgenesis
  {
    path: '/microgenesis',
    name: 'microgenesis',
    components: {
      default: Microgenesis,
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

  // Renegade Reach
  {
    path: '/renegade-reach',
    name: 'renegade-reach',
    components: {
      default: RenegadeReach,
    },
  },

  // Renegade Science
  {
    path: '/renegade-science',
    name: 'renegade-science',
    components: {
      default: RenegadeScience,
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

  // Test Directory
  {
    path: '/test-directory',
    name: 'test-directory',
    components: {
      default: TestDirectory,
    },
  },

  // Umoja Health
  {
    path: '/umoja-health',
    name: 'umoja-health',
    components: {
      default: UmojaHealth,
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
]

export default routes
