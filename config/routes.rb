Rails.application.routes.draw do
  resources :doctor_visits
  resources :prescripations
  resources :patients
  resources :drugs
  resources :pharmacists
  resources :doctors
  resources :reviews
  resources :orders
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

resources :movies do
      end

  get 'search', to: 'movies#search'

end
