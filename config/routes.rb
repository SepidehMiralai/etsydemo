Rails.application.routes.draw do
  devise_for :users
  resources :listings
  get 'pages/about'
  get 'pages/contact'
  get 'seller' => 'listings#seller'
  # get '/users',   to: 'users#index'
  root 'listings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
