class CreateBoards < ActiveRecord::Migration[8.0]
  def change
    create_table :boards do |t|
      t.string :model
      t.string :serial_number
      t.integer :quantity

      t.timestamps
    end
  end
end
