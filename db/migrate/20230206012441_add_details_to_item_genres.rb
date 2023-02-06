class AddDetailsToItemGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :item_genres, :genre_name, :string
  end
end
