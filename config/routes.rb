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
  resources :shopping_carts
  resources :addresses do
    member do
      put :set_default_address
    end
  end
  resources :orders
  resources :payments, only: [:index] do
    collection do
      get :generate_pay
      get :pay_return
      get :pay_notify
      get :success
      get :failed
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
