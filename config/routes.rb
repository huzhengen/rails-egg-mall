Rails.application.routes.draw do
  namespace :admin do
    root 'sessions#new'
    resources :sessions
    resources :categories
  end
  root 'welcome#index'
  resources :users
  resources :sessions
  delete '/logout' => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
