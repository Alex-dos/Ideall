class AddPriceToGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :price, :float
    add_column :games, :price, :string
  end
  
end
