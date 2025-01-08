class CreateAccessories < ActiveRecord::Migration[8.0]
  def change
    create_table :accessories do |t|
      t.string :name
      t.string :observation

      t.timestamps
    end
  end
end
