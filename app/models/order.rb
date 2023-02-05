class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_item
  
  with_options presence: true do
    validates :customer_id
    validates :order_day
    validates :Shipping_address
    validates :payment_method
    validates :order_status
  end
end
