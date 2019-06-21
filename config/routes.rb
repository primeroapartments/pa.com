Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'
  get 'faq', to: 'pages#faq'
  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'locations', to: 'apartments#locations'
  get 'book', to: 'apartments#book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'apartments', to: 'apartments#index'

  root to: 'pages#home'
end
