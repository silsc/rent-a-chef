Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chefs, only: [:new, :create, :index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :update]
  resource :dashboard, only: [:show]

  get '/styleguide', to: 'pages#styleguide'
  get '/featured', to: 'pages#featured'
end
