class RemoveOrderDayFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :order_day, :datetime
  end
end
