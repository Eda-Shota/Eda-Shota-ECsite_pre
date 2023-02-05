class Cart < ApplicationRecord
  belongs_to :customer
  
  with_options presence: true do
    validates :customer_id
  end
end
