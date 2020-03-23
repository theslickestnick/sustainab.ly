class Organization < ApplicationRecord
    has_many :exchanges
    has_many :restaurants, through: :exchanges
end
