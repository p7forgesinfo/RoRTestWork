Rails.application.routes.draw do

  resources :news
  resources :subscriptions
  get 'welcome/index'

  devise_for :users, controllers: { registrations: "users/registrations"}

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
