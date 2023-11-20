Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      resources :airline, param: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

  # Defines the root path route ("/")
  # root "posts#index"
  get '*path', to: 'pages#index', via: :all
end