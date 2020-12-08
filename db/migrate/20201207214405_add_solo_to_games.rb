class AddSoloToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :solo, :string
  end
end
