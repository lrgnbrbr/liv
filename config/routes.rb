Rails.application.routes.draw do
  get 'informations/index'
  get 'testimonials/index'
  # get 'organizations/index'
  devise_for :users
  root to: 'pages#home'

  resources :lawsuits, only: [ :new, :create]
  resources :organizations
  resources :medical
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
