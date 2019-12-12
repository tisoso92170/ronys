Rails.application.routes.draw do
  devise_for :users
  root 'welcome#dashboard'
  #get 'welcome/dashboard'
  resources :tiers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
