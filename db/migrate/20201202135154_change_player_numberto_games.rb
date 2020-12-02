class ChangePlayerNumbertoGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :player_number, :integer
    add_column :games, :player_number_min, :integer
    add_column :games, :player_number_max, :integer
  end
end
