class AddAppidToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :appid, :integer
  end
end
