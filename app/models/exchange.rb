class Exchange < ApplicationRecord
    belongs_to :restaurant
    belongs_to :organization, optional: true
    has_many :restaurant_foods
end
