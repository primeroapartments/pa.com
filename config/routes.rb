Rails.application.routes.draw do
  resources :apartments, only: [:new, :edit, :show, :create, :index, :update, :destroy]


  get 'contact', to: 'pages#contact'
  get 'faq', to: 'pages#faq'
  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'website_terms', to: 'pages#website_terms'

  get 'locations', to: 'apartments#locations'
  get 'book', to: 'apartments#book'
  get 'sheffield', to: 'apartments#sheffield'
  get 'cardiff', to: 'apartments#cardiff'
  get 'basingstoke', to: 'apartments#basingstoke'
  get 'birmingham', to: 'apartments#birmingham'

  get 'apartments', to: 'apartments#index'
  get 'apartments/new', to: 'apartments#new'
  post 'apartments', to: 'apartments#create'
  get 'apartments/:id', to: 'apartments#show'
  get 'apartments/:id/edit/', to: 'apartments#edit'
  patch 'apartments/:id', to: 'apartments#update'
  delete 'apartments/:id', to: 'apartments#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end

