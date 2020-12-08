class CreateChoiceGames < ActiveRecord::Migration[6.0]
  def change
    create_table :choice_games do |t|
      t.integer :rank
      t.string :update_by, array: true
      t.references :game, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
