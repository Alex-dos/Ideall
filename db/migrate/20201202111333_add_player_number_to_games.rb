class AddPlayerNumberToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :player_number, :integer
  end
end
