class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :password
      t.integer :price_filter
      t.integer :player_number

      t.timestamps
    end
  end
end
