Rails.application.routes.draw do
  get "up" => "rails/health#show"
  get "service-worker" => "rails/pwa#service_worker"
  get "manifest" => "rails/pwa#manifest"
  root to: "pages#home"
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  
  resources :courses do
    resources :lessons do
      resources :forums do
        resources :questions  
      end
    end
  end
end
