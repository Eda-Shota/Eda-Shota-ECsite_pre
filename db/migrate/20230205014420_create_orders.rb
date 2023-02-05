class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false, foreign_key: true
      t.datetime :order_day, null: false
      t.string :shipping_address, null: false
      t.integer :postage, default: 800
      t.integer :payment_method, null: false
      t.integer :order_status, default: 0
      t.timestamps
    end
  end
end
