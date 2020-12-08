class AddPhotoToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :photo, :string
  end
end
