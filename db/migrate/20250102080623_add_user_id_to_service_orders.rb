class AddUserIdToServiceOrders < ActiveRecord::Migration[8.0]
  def change
    add_column :service_orders, :user_id, :integer
    add_index :service_orders, :user_id
  end
end
