class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :doors
      t.integer :windows
      t.integer :rooms
      t.string :address

      t.timestamps
    end
  end
end
