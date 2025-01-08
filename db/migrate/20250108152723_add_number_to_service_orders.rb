class AddNumberToServiceOrders < ActiveRecord::Migration[8.0]
  def change
    add_column :service_orders, :service_order_number, :integer
  end
end
