class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id, null: false, foreign_key: true
      t.integer :item_id, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.timestamps
    end
  end
end