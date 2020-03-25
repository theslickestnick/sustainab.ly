Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :restaurants, only: [:new, :create, :show]
resources :restaurant_foods, only: [:index]
resources :organizations
resources :exchanges
end