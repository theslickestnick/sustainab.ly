class Organization < ApplicationRecord
    has_many :exchanges
    has_many :restaurants, through: :exchanges
    has_secure_password

# validates :phone_number, length: {is: 10}
# validates :name, :street_address, :city, :state, :zip_code, :contact_email, :phone_number, presence: true
# validates :zip_code, length: {is: 5}
# validates :contact_email, uniqueness: true
end
