class RestaurantsController < ApplicationController
    
    def new
        @restaurant = Restaurant.new
    end

    def show 
        @restaurant = Restaurant.find(@current_restaurant.id)
    end

    def edit
        @restaurant = Restaurant.find(@current_restaurant.id)
    end

    def create 
        @restaurant = Restaurant.create(restaurant_params)
        session[:restaurant_id] = @restaurant.id #sets restaurant id to session key
        redirect_to restaurant_path(@restaurant)
    end

    def update 
        @restaurant = Restaurant.find(@current_restaurant.id)
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    private 

    def restaurant_params 
        params.require(:restaurant).permit(:name, :street_address, :city, :state, :zip_code, :contact_email, :phone_number, :password)
    end
end
