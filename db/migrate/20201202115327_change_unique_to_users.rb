class ChangeUniqueToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :email, :string
    remove_column :users, :encrypted_password, :string
  end
end
