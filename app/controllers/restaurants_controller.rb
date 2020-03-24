class RestaurantsController < ApplicationController
    
    def new
        @restaurant = Restaurant.new
    end

    def show 
        @restaurant = Restaurant.find(params[:id])
    end

    def edit
    end

    def create 
        @restaurant = Restaurant.create(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    def update 
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    private 

    def restaurant_params 
        params.require(:restaurant).permit(:name, :street_address, :city, :state, :zip_code, :contact_email, :phone_number)
    end
end