Rails.application.routes.draw do
  get 'home/index'
  resources :accounts
  devise_for :clients
  get 'welcome/index'
  root 'welcome#index'
  resources :account_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
