Rails.application.routes.draw do
  resources :restaurants, only: [:new, :create, :show]
  resources :restaurant_foods, only: [:index]
end
