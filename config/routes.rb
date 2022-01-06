Rails.application.routes.draw do
  namespace :admin do
    root 'sessions#new'
    resources :sessions
    resources :categories
    resources :products do
      resources :product_images, only: [:index, :create, :destroy, :update]
    end
  end
  root 'welcome#index'
  resources :users
  resources :sessions
  delete '/logout' => 'sessions#destroy', as: :logout
  resources :categories, only: [:show]
  resources :products, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
