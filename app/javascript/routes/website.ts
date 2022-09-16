const AboutUs = () => import('@/pages/website/AboutUsPage.vue')
const Accreditations = () => import('@/pages/website/AccreditationsPage.vue')
const AnnualReport = () => import('@/pages/website/AnnualReportPage.vue')
const BillingNotice = () => import('@/pages/website/BillingNoticePage.vue')
const CardiovascularHealth = () => import('@/pages/website/CardiovascularHealthPage.vue')
// const Careers = () => import('@/pages/website/CareersPage.vue')
const CaseStudies = () => import('@/pages/website/CaseStudiesPage.vue')
const ContactUs = () => import('@/pages/website/ContactUsPage.vue')
const Covid19Solutions = () => import('@/pages/website/Covid19SolutionsPage.vue')
const CTPStatement = () => import('@/pages/website/CTPStatementPage.vue')
// const DiagnosticSolutions = () => import('@/pages/website/DiagnosticSolutionsPage.vue')
const Home = () => import('@/pages/website/HomePage.vue')
// const HowWeWork = () => import('@/pages/website/HowWeWorkPage.vue')
// const Index = () => import('@/pages/website/IndexPage.vue');
const InfectiousDiseases = () => import('@/pages/website/InfectiousDiseasesPage.vue')
const InnovationsInDiagnostics = () => import('@/pages/website/InnovationsInDiagnosticsPage.vue')
// const Login = () => import('@/pages/website/LoginPage.vue')
const ManageCookies = () => import('@/pages/website/ManageCookiesPage.vue')
const Metabolomic = () => import('@/pages/website/MetabolomicPage.vue')
const Microgenesis = () => import('@/pages/website/MicrogenesisPage.vue')
const PrivacyPolicy = () => import('@/pages/website/PrivacyPolicyPage.vue')
const RenegadeReach = () => import('@/pages/website/RenegadeReachPage.vue')
const RenegadeScience = () => import('@/pages/website/RenegadeSciencePage.vue')
const ReproductiveHealth = () => import('@/pages/website/ReproductiveHealthPage.vue')
// const Signup = () => import('@/pages/website/SignupPage.vue')
// const SupportAndFaq = () => import('@/pages/website/SupportAndFaqPage.vue')
const TermsAndConditions = () => import('@/pages/website/TermsAndConditionsPage.vue')
const TestDirectory = () => import('@/pages/website/TestDirectoryPage.vue')
const UmojaHealth = () => import('@/pages/website/UmojaHealthPage.vue')
// const WhoWeAre = () => import('@/pages/website/WhoWeArePage.vue')

const routes = [
  // *****************************************************************************************
  // Home
  // -----------------------------------------------------------------------------------------
  {
    path: '/',
    name: 'home',
    components: {
      default: Home,
    },
  },
  // *****************************************************************************************

  // *****************************************************************************************
  // How We Work
  // -----------------------------------------------------------------------------------------
  // // How We Work
  // {
  //   path: '/how-we-work',
  //   name: 'how-we-work',
  //   components: {
  //     default: HowWeWork,
  //   },
  // },

  // Renegade Reach
  {
    meta: { group: 'how-we-work' },
    path: '/renegade-reach',
    name: 'renegade-reach',
    components: {
      default: RenegadeReach,
    },
  },

  // Renegade Science
  {
    meta: { group: 'how-we-work' },
    path: '/renegade-science',
    name: 'renegade-science',
    components: {
      default: RenegadeScience,
    },
  },
  // *****************************************************************************************

  // *****************************************************************************************
  // Diagnostic Solutions
  // -----------------------------------------------------------------------------------------
  // // Diagnostic Solutions
  // {
  //   path: '/diagnostic-solutions',
  //   name: 'diagnostic-solutions',
  //   components: {
  //     default: DiagnosticSolutions,
  //   },
  // },

  // Infectious Diseases
  {
    meta: { group: 'diagnostic-solutions' },
    path: '/infectious-diseases',
    name: 'infectious-diseases',
    components: {
      default: InfectiousDiseases,
    },
  },

  // Reproductive Health
  {
    meta: { group: 'diagnostic-solutions' },
    path: '/reproductive-health',
    name: 'reproductive-health',
    components: {
      default: ReproductiveHealth,
    },
  },

  // Cardiovascular Health
  {
    meta: { group: 'diagnostic-solutions' },
    path: '/cardiovascular-health',
    name: 'cardiovascular-health',
    components: {
      default: CardiovascularHealth,
    },
  },

  // Innovations in Diagnostics
  {
    meta: { group: 'diagnostic-solutions' },
    path: '/innovations-in-diagnostics',
    name: 'innovations-in-diagnostics',
    components: {
      default: InnovationsInDiagnostics,
    },
  },

  // Test Directory
  {
    meta: { group: 'diagnostic-solutions' },
    path: '/tests',
    alias: '/test-directory',
    name: 'test-directory',
    components: {
      default: TestDirectory,
    },
  },
  // *****************************************************************************************

  // *****************************************************************************************
  // Case Studies
  // -----------------------------------------------------------------------------------------
  // Case Studies
  {
    meta: { group: 'case-studies' },
    path: '/case-studies',
    name: 'case-studies',
    components: {
      default: CaseStudies,
    },
    // children: [
    //   {
    //     path: '/case-studies/umoja-health',
    //     name: 'umoja-health',
    //     components: {
    //       default: UmojaHealth,
    //     },
    //   },
    //   {
    //     path: '/case-studies/metabolomic',
    //     name: 'metabolomic',
    //     components: {
    //       default: Metabolomic,
    //     },
    //   },
    //   {
    //     path: '/case-studies/microgenesis',
    //     name: 'microgenesis',
    //     components: {
    //       default: Metabolomic,
    //     },
    //   },
    // ],
  },

  // Umoja Health
  {
    meta: { group: 'case-studies' },
    path: '/case-studies/umoja-health',
    name: 'umoja-health',
    components: {
      default: UmojaHealth,
    },
  },

  // Metabolomic
  {
    meta: { group: 'case-studies' },
    path: '/case-studies/metabolomic',
    name: 'metabolomic',
    components: {
      default: Metabolomic,
    },
  },

  // Microgenesis
  {
    meta: { group: 'case-studies' },
    path: '/case-studies/microgenesis',
    name: 'microgenesis',
    components: {
      default: Microgenesis,
    },
  },
  // *****************************************************************************************

  // *****************************************************************************************
  // Who We Are
  // -----------------------------------------------------------------------------------------
  // // Who We Are
  // {
  //   path: '/who-we-are',
  //   name: 'who-we-are',
  //   components: {
  //     default: WhoWeAre,
  //   },
  // },

  // About Us
  {
    meta: { group: 'who-we-are' },
    path: '/about-us',
    name: 'about-us',
    components: {
      default: AboutUs,
    },
  },

  // Annual Report
  {
    meta: { group: 'who-we-are' },
    path: '/annual-report',
    name: 'annual-report',
    components: {
      default: AnnualReport,
    },
  },

  // Careers
  {
    meta: { group: 'who-we-are' },
    path: '/careers',
    name: 'careers',
    redirect: {
      name: 'https://renegade-bio.breezy.hr/',
    },
  },
  // *****************************************************************************************

  // *****************************************************************************************
  // Covid-19 Soutions
  // -----------------------------------------------------------------------------------------
  // COVID-19 Solutions
  {
    meta: { group: 'covid-19-solutions' },
    path: '/covid-19-solutions',
    name: 'covid-19-solutions',
    components: {
      default: Covid19Solutions,
    },
  },
  // *****************************************************************************************

  // *****************************************************************************************
  // Contact Us
  // -----------------------------------------------------------------------------------------
  {
    path: '/contact-us',
    name: 'contact-us',
    components: {
      default: ContactUs,
    },
  },
  // *****************************************************************************************

  // *****************************************************************************************
  // Legal
  // -----------------------------------------------------------------------------------------
  // Terms & Conditions
  {
    path: '/policies/terms-and-conditions',
    name: 'terms-and-conditions',
    components: {
      default: TermsAndConditions,
    },
  },

  // Privacy Policy
  {
    path: '/policies/privacy-policy',
    name: 'privacy-policy',
    components: {
      default: PrivacyPolicy,
    },
  },

  // Accreditations
  {
    path: '/policies/accreditations-certifications',
    alias: '/policies/accreditations',
    name: 'accreditations',
    components: {
      default: Accreditations,
    },
  },

  // Billing Notice
  {
    path: '/policies/billing',
    alias: '/policies/billing-notice',
    name: 'billing-notice',
    components: {
      default: BillingNotice,
    },
  },

  // Manage Cookies
  {
    path: '/policies/manage-cookies',
    name: 'manage-cookies',
    components: {
      default: ManageCookies,
    },
  },
  // *****************************************************************************************

  // *****************************************************************************************
  // Other / Stand Alone
  // -----------------------------------------------------------------------------------------
  // Support & FAQ
  // {
  //   path: '/support-and-faq',
  //   name: 'support-and-faq',
  //   components: {
  //     default: SupportAndFaq,
  //   },
  // },

  {
    path: '/ctp-statement',
    name: 'ctp-statement',
    components: {
      default: CTPStatement,
    },
  },

  {
    path: '/support-and-faq',
    name: 'support-and-faq',
    redirect: {
      name: 'https://support.renegade.bio/',
    },
  },

  // *****************************************************************************************

  // *****************************************************************************************
  // Authentication
  // -----------------------------------------------------------------------------------------
  // // Sign Up
  // {
  //   path: '/signup',
  //   name: 'signup',
  //   components: {
  //     default: Signup,
  //   },
  // },

  // // Login
  // {
  //   path: '/login',
  //   name: 'login',
  //   components: {
  //     default: Login,
  //   },
  // },
  // *****************************************************************************************
]

export default routes
