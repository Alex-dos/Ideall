class AddMultiToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :multi, :string
  end
end
