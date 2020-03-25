Rails.application.routes.draw do
  resources :restaurants, only: [:new, :create, :show, :edit, :update]
  resources :restaurant_foods, only: [:index]
end
