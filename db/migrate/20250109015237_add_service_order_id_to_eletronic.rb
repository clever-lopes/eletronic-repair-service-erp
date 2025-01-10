class AddServiceOrderIdToEletronic < ActiveRecord::Migration[8.0]
  def change
    add_column :eletronics, :service_order_id, :string
  end
end
