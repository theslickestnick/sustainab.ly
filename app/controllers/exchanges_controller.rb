class ExchangesController < ApplicationController

    def index
        @exchanges = Exchange.all
    end

    def new
        @exchange = Exchange.new
    end
    
    def show
        @exchange = Exchange.find(params[:id])
    end

    def create 
        @exchange = Exchange.create(exchange_params)
        session[:restaurant_id] = @current_restaurant.id
        # change_food_status
        redirect_to exchanges_path(@exchange.id)
    end
   
    private 

    def exchange_params
        params.require(:exchange).permit(:restaurant_id, :organziation_id, :exchange_start, :exchange_end, :status, :notes)
    end
end
