Rails.application.routes.draw do
  resources :apartments, only: [:new, :edit, :show, :create, :index, :destroy]
  get 'contact', to: 'pages#contact'
  get 'faq', to: 'pages#faq'
  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'locations', to: 'apartments#locations'
  get 'book', to: 'apartments#book'
  get 'website_terms', to: 'pages#website_terms'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'apartments', to: 'apartments#index'
  get 'apartments/new', to: 'apartments#new'
  post 'apartments', to: 'apartments#create'

  root to: 'pages#home'
end
