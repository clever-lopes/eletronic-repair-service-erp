class CreateEletronics < ActiveRecord::Migration[8.0]
  def change
    create_table :eletronics do |t|
      t.string :serial_number
      t.string :model
      t.string :quantity
      t.string :color
      t.integer :type_id
      t.integer :accessory_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
