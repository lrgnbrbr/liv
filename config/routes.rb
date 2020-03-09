Rails.application.routes.draw do
  get 'informations/index'
  get 'testimonials/index'
  devise_for :users

  get :calculator,  to: 'pages#calculator'

  root to: 'pages#home'


  resources :lawsuits, only: [ :new, :create, :show] do
    get "lawsuit_send", on: :member
  end

  resources :organizations
  resources :medical
  resources :pages, only: [:calculator, :home]







  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
