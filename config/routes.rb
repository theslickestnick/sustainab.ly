Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show, :edit, :update]  
  resources :restaurant_foods, only: [:index, :create, :new, :show, :edit, :update]
  resources :organizations
  resources :exchanges

end

