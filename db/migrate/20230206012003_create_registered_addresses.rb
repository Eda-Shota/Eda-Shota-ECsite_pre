class CreateRegisteredAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :registered_addresses do |t|
      t.integer :customer_id, null: false, foreign_key: true
      t.integer :post_code, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
