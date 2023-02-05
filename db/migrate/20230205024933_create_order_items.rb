class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :order_id, null: false, foreign_key: true
      t.integer :item_id, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.integer :order_item_status, default: 0
      t.timestamps
    end
  end
end
