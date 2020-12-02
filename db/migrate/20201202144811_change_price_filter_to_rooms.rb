class ChangePriceFilterToRooms < ActiveRecord::Migration[6.0]
  def change
    change_column :rooms, :price_filter, :string
  end
end
