class RemoveUserIdToChoiceCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :choice_categories, :user_id
  end
end