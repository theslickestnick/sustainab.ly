class RestaurantFood < ApplicationRecord
    belongs_to :restaurant
    belongs_to :exchanges
end
