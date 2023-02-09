class Item < ApplicationRecord
  belongs_to :item_genre
  has_one_attached :item_image

  with_options presence: true do
    validates :item_genre_id
    validates :item_name
    validates :item_detail
    validates :price
    validates :status
    
  end
  
  def get_item_image
    (item_image.attached?) ? item_image : 'no_image.jpg'
  end
  
  def with_tax_price
    (price * 1.1).floor
  end

  
end
