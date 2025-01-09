class AddEletronicIdToServiceOrder < ActiveRecord::Migration[8.0]
  def change
    add_column :service_orders, :eletronic_id, :integer
  end
end
