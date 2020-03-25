class Exchange < ApplicationRecord
    belongs_to :restaurant
    belongs_to :organization, optional: true
end
