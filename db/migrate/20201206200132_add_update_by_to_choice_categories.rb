class AddUpdateByToChoiceCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :choice_categories, :update_by, :string, array: true
  end
end
