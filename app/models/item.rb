class Item < ApplicationRecord
  belongs_to :item_genre
  has_one_attached :profile_image

  with_options presence: true do
    validates :item_genre_id
    validates :item_name
    validates :item_detail
    validates :price
    validates :status
  end
end
