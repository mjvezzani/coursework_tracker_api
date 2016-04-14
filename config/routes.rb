Rails.application.routes.draw do
  namespace :api, path: '/', constraints: {subdomain: 'api'} do
    resources :courses, except: [:new, :edit] do
      resources :assignments, except: [:new, :edit]
    end
  end
end
