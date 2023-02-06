class ItemGenre < ApplicationRecord
  has_many :item

  with_options presence: true do
    validates :genre_name
  end
end
