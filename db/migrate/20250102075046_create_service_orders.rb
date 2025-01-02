class CreateServiceOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :service_orders do |t|
      t.string :reported_issue
      t.string :identified_issue
      t.string :obs

      t.timestamps
    end
  end
end
