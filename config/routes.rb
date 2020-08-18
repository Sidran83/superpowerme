Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :categories, only: [:index, :show] do

    resources :superpowers,  only: [:index, :show] do
      resources :rentings, only: [:create]
    end
  # end
  resources :rentings, only: [:index, :show, :edit, :update, :destroy]
end
