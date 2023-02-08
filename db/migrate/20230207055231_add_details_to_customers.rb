class AddDetailsToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :last_name, :string
    add_column :customers, :last_name_kana, :string
    rename_column :customers, :name, :first_name
    rename_column :customers, :name_kana, :first_name_kana
  end
end
