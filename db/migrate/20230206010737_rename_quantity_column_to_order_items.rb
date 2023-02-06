class RenameQuantityColumnToOrderItems < ActiveRecord::Migration[6.1]
  def change
    rename_column :order_items, :quantity, :amount
    rename_column :cart_items, :quantity, :amount
  end
end
