class AddDetailsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :shipping_post_code, :integer, null: false
    add_column :orders, :shipping_name, :string, null: false
    add_column :orders, :total_price, :integer, null: false
    add_column :order_items, :price, :integer, null: false
    add_column :cart_items, :price, :integer, null: false
    
  def up
    remove_column :orders, :order_day
  end

  def down
    add_column :orders, :order_day, :datetime
  end
    
  end
end
