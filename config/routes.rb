Rails.application.routes.draw do
  resources :restaurants, only: [:new, :create, :show, :edit, :update]
  resources :restaurant_foods, only: [:index, :create, :new, :show]
  resources :organizations
  resources :exchanges
end

#Add rest_food form 
#Move form to rest show page OR sessions and cookies 
#