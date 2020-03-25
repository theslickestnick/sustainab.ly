class RestaurantFoodsController < ApplicationController

    # def index
    #     @restaurantfoods = RestaurantFood.all
    # end
    
    def show
        @restaurantfood = RestaurantFood.find(params[:id])
    end

    def new
        @restaurantfood = RestaurantFood.new
    end

    def create 
        @restaurantfood = RestaurantFood.create(restaurant_food_params)
        # redirect_to restaurant_food_path
    end
end
