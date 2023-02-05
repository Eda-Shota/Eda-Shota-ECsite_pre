class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item
  
  with_options presence: true do
    validates :order_id
    validates :item_id
    validates :quantity
    validates :payment_method
    validates :order_item_status
  end
end
