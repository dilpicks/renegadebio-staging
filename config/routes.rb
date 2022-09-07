Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  # -----------------------------------------------------------------------------------------
  # SPA Entry Point
  # -----------------------------------------------------------------------------------------
    root to: 'application#website'

  # -----------------------------------------------------------------------------------------
  # Devise Routes
  # -----------------------------------------------------------------------------------------
    # devise_for :users, defaults: { format: :json }, skip: :all
    # devise_scope :user do
    #   # If you change these urls and helpers, you must change these files too:
    #   # - config/initializers/devise.rb#JWT Devise
    #   # - spec/support/authentication_helper.rb
    #   post '/users/login' => 'sessions#create', as: :user_session
    #   delete '/users/logout' => 'sessions#destroy', as: :destroy_user_session
    #   post '/users/signup' => 'registrations#create', as: :user_registration
    # end

  # -----------------------------------------------------------------------------------------
  # Phase 1 - 301 Redirects
  # -----------------------------------------------------------------------------------------
    # /diagnostic-testing
    get '/diagnostic-testing/covid-19-testing-organizations', to: redirect('/covid-19-solutions', status: 301)
    get '/diagnostic-testing/about-our-covid-tests', to: redirect('/covid-19-solutions', status: 301)
    get '/diagnostic-testing/covid-lab-partners', to: redirect('/covid-19-solutions', status: 301)
    get '/diagnostic-testing/covid-19-travel-testing', to: redirect('/covid-19-solutions', status: 301)
    get '/diagnostic-testing/about-our-saliva-covid-test', to: redirect('/covid-19-solutions', status: 301)
    get '/diagnostic-testing/about-our-nasal-pcr-covid-test', to: redirect('/covid-19-solutions', status: 301)
    get '/diagnostic-testing/covid/uninsured-and-sick-with-covid-19-symptoms', to: redirect('/covid-19-solutions', status: 301)

    # /about-us
    # ***SPA Endpoint TBD***
    get '/about-us/about', to: redirect('/about-us', status: 301)
    get '/about-us/team', to: redirect('/about-us#our-team', status: 301)
    get '/about-us/careers', to: redirect('https://renegade-bio.breezy.hr/', status: 301)
    get '/about-us/press', to: redirect('/', status: 301)
    get '/about-us/strategic-partners', to: redirect('/renegade-science', status: 301)

    # /team
    # ***SPA Endpoint TBD***
    get '/team/craig-rouskey', to: redirect('/about-us#craig-rouskey', status: 301)
    get '/team/gabriel-paulino-phd', to: redirect('/about-us#gabriel-paulino-phd', status: 301)
    get '/team/salu-robeiro-msc', to: redirect('/about-us#salu-robeiro-msc', status: 301)
    get '/team/jen-skeen', to: redirect('/about-us#jen-skeen', status: 301)
    get '/team/angelike-kefalas', to: redirect('/about-us#angelike-kefalas', status: 301)
    get '/team/neil-turner', to: redirect('/about-us#neil-turner', status: 301)
    get '/team/limor-allen', to: redirect('/about-us#limor-allen', status: 301)

    # /blog
    get '/blog', to: redirect('/', status: 301)

    # /posts
    get '/post/tuzun-guvener', to: redirect('https://renegade-bio.breezy.hr/', status: 301)
    get '/post/daniel-lee', to: redirect('https://renegade-bio.breezy.hr/', status: 301)
    get '/post/rethinking-diagnostics-to-reduce-healthcare-disparities', to: redirect('/renegade-reach', status: 301)
    get '/post/how-to-prevent-covid-outbreaks-in-schools', to: redirect('/covid-19-solutions', status: 301)
    get '/post/decentralizing-salivadirect-sample-collection', to: redirect('/covid-19-solutions', status: 301)
    get '/post/covid-19-infection-vaccines-fertility', to: redirect('/covid-19-solutions', status: 301)
    get '/post/how-to-covid-production-companies', to: redirect('/covid-19-solutions', status: 301)
    get '/post/how-to-stay-safe-post-vaccination', to: redirect('/covid-19-solutions', status: 301)
    get '/post/covid-variants', to: redirect('/covid-19-solutions', status: 301)
    get '/post/how-to-pay-for-covid-testing', to: redirect('/covid-19-solutions', status: 301)
    get '/post/get-the-right-test-at-the-right-time', to: redirect('/covid-19-solutions', status: 301)
    get '/post/coronavirus-tips-flying', to: redirect('/covid-19-solutions', status: 301)
    get '/post/covid-safe-thanksgiving', to: redirect('/covid-19-solutions', status: 301)
    get '/post/right-type-of-covid-19-test', to: redirect('/covid-19-solutions', status: 301)

    # /news
    get '/news', to: redirect('/', status: 301)
    get '/news?3057a815_page=2', to: redirect('/', status: 301)
    get '/news?3057a815_page=1', to: redirect('/', status: 301)
    get '/news?3057a815_page=3', to: redirect('/', status: 301)
    get '/news?3057a815_page=4', to: redirect('/', status: 301)

    # /support
    get '/support/contact', to: redirect('/', status: 301)

    # /policies
    # * Endpoints already conformed to routing schema. No redirect necessary.
    # get '/policies/terms-conditions', to: redirect('/policies/terms-conditions', status: 301)
    # get '/policies/privacy-policy', to: redirect('/policies/privacy-policy', status: 301)
    # get '/policies/accreditations-certifications', to: redirect('/policies/accreditations-certifications', status: 301)
    # get '/policies/billing', to: redirect('/policies/billing', status: 301)
    # get '/policies/manage-cookies', to: redirect('/policies/manage-cookies', status: 301)

    # /covid-testing
    get '/covid-testing/schools-universities', to: redirect('/covid-19-solutions', status: 301)
    get '/covid-testing/production-companies', to: redirect('/covid-19-solutions', status: 301)

    # /jobs
    get '/jobs/clinical-trial-manager', to: redirect('https://renegade-bio.breezy.hr/', status: 301)
    get '/jobs/program-manager', to: redirect('https://renegade-bio.breezy.hr/', status: 301)
    get '/jobs/full-stack-software-engineer', to: redirect('https://renegade-bio.breezy.hr/', status: 301)
    get '/jobs/clinical-laboratory-scientist', to: redirect('https://renegade-bio.breezy.hr/', status: 301)
    get '/jobs/lab-specimen-accessioner-berkeley', to: redirect('https://renegade-bio.breezy.hr/', status: 301)
    get '/jobs/testing-site-administrator', to: redirect('https://renegade-bio.breezy.hr/', status: 301)

    # /press-releases
    get '/press-releases/monkeypox-test-with-fast-result-turn-around-times-of-24-hours', to: redirect('/infectious-diseases', status: 301)
    get '/press-releases/renegade-bio-announces-decision-to-continue-no-cost-covid-19-testing-for-symptomatic-uninsured-bay-area-community', to: redirect('/covid-19-solutions', status: 301)
    get '/press-releases/renegade-bio-metabolomic-diagnostics-announcement', to: redirect('/reproductive-health', status: 301)
    get '/press-releases/renegade-bio-expands-access-to-cutting-edge-diagnostics-with-new-lab-in-berkeley', to: redirect('/', status: 301)
    get '/press-releases/alameda-county-covid-19-vaccine-testing', to: redirect('/covid-19-solutions', status: 301)
    get '/press-releases/renegade-bio-announces-authorization-to-offer-salivadirect-covid-19-test', to: redirect('/covid-19-solutions', status: 301)
    get '/press-releases/affordable-next-day-covid-testing-in-north-oakland', to: redirect('/covid-19-solutions', status: 301)
    get '/press-releases/renegade-bio-officially-certified-a-lgbt-business-enterprise-r-by-the-national-lgbt-chamber-of-commerce', to: redirect('/', status: 301)
    get '/press-releases/renegade-bio-announces-r-d-partnership-with-caspr-biotech-to-develop-cost-effective-point-of-care-covid-19-tests', to: redirect('/renegade-science', status: 301)
    get '/press-releases/renegade-bio-and-primary-form-strategic-alliance-to-streamline-and-expedite-access-to-us-wide-covid-19-community-testing', to: redirect('/covid-19-solutions', status: 301)
    get '/press-releases/renegade-bio-responds-to-new-yorkcity-call-for-accelerated-covid-19testing', to: redirect('/covid-19-solutions', status: 301)

    # /travel
    get '/travel/covid-travel-requirements', to: redirect('/covid-19-solutions', status: 301)
    get '/travel/faqs', to: redirect('/covid-19-solutions', status: 301)

  # -----------------------------------------------------------------------------------------
  # SPA Pages
  # -----------------------------------------------------------------------------------------
    # get '/panel(/*path)', to: 'application#panel', as: :panel
    get '/(*path)', to: 'application#website', as: :website
end
