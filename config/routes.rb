Rails.application.routes.draw do
  resources :apartments, only: [:new, :edit, :show, :create, :index, :destroy]

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
  get 'preston', to: 'apartments#preston'
  get 'apartments', to: 'apartments#index'
  get 'apartments/new', to: 'apartments#new'
  post 'apartments', to: 'apartments#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
