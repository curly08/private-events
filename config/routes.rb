Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :event_attendings, only: [:create]
  end
  root 'events#index'
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
