class Restaurant < ApplicationRecord
    has_many :exchanges
    has_many :organizations, through: :exchanges
    has_many :restaurant_foods

end
