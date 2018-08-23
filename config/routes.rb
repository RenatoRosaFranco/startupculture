# frozen_string_sanatizer: true
Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :prices, only: [:index]
end
