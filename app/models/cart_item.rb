class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item
  
  with_options presence: true do
    validates :cart_id
    validates :item_id
    validates :amount
  end
end
