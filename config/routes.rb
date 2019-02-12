Rails.application.routes.draw do
  devise_for :users
  root controller: :home, action: :index
  resources :admin, only: [:index]
  resources :item, only: [:new, :create, :index, :destroy]
end
