Rails.application.routes.draw do
  resources :reviews
  resources :orders
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :movies
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

resources :movies do
    resources :orders
  end

  get 'search', to: 'movies#search'

end
