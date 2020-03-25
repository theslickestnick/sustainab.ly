class RestaurantFoodsController < ApplicationController
    
    def show
        @restaurantfood = RestaurantFood.find(params[:id])
    end

    def new
        @restaurantfood = RestaurantFood.new
    end

    def create 
        params_hash = rest_food_params
        params_hash[:restaurant_id] = @current_restaurant.id
        @restaurantfood = RestaurantFood.create(params_hash)
        redirect_to restaurant_path(@restaurantfood.restaurant) 
        # else
        #     flash[:errors].@restaurant_food.error.full_messages
        #     redirect_to new_restaurant_food_path #need this redirect to new page         
        # end
    end

    private

    def rest_food_params 
        params.require(:restaurant_food).permit(:food_type, :quantity, :use_by, :notes)
    end
    
end
