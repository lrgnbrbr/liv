Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :lawsuits, only: [ :new, :create]
  resources :organizations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
