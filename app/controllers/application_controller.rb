class ApplicationController < ActionController::Base
    before_action :current_restaurant

    def current_restaurant 
        @current_restaurant = Restaurant.find_by(id: session[:restaurant_id])
    end
end
