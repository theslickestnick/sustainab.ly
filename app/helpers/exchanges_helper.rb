module ExchangesHelper
    # def display_exchange_contents
    #     @current_restaurant.restaurant_foods.each do |food|
    #         # byebug
    #         print food.food_type
    #     end
    # end

    def change_food_status
        @current_restaurant.restaurant_foods.each do |food| 
            if food.status == true
               food.status = false                
            else                
            end
        end
    end
end
