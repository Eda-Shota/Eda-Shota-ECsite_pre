class RegisteredAddress < ApplicationRecord
  belongs_to :customer

  with_options presence: true do
    validates :customer_id
    validates :post_code
    validates :address
    validates :name
  end
end
