class RestaurantFoodsController < ApplicationController
    
    def show
        @restaurant_food = RestaurantFood.find(params[:id])
    end

    def new
        @restaurant_food = RestaurantFood.new
    end

    def edit 
        @restaurant_food = RestaurantFood.find(params[:id])
    end

    def create
        params_hash = rest_food_params
        params_hash[:restaurant_id] = @current_restaurant.id
        @restaurant_food = RestaurantFood.create(params_hash)
        redirect_to restaurant_path(@restaurant_food.restaurant) 
        # else
        #     flash[:errors].@restaurant_food.error.full_messages
        #     redirect_to new_restaurant_food_path #need this redirect to new page         
        # end
    end

    def update  
        params_hash = rest_food_params
        params_hash[:restaurant_id] = @current_restaurant.id
        @restaurant_food = RestaurantFood.update(params_hash)
        redirect_to restaurant_path(@current_restaurant.id)
    end

    private

    def rest_food_params 
        params.require(:restaurant_food).permit(:restaurant_id, :food_type, :quantity, :use_by, :notes)
    end
    
end
