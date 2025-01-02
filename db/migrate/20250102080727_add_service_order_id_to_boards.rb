class AddServiceOrderIdToBoards < ActiveRecord::Migration[8.0]
  def change
    add_column :boards, :service_order_id, :integer
    add_index :boards, :service_order_id
  end
end
