class AddBrandIdToBoards < ActiveRecord::Migration[8.0]
  def change
    add_column :boards, :board_id, :integer
    add_index :boards, :board_id
  end
end
