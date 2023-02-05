class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :item_genre_id, null: false, foreign_key: true
      t.integer :item_name, null: false
      t.text :item_detail, null: false
      t.integer :price, null: false
      t.string :status, null: false
      t.timestamps
    end
  end
end
