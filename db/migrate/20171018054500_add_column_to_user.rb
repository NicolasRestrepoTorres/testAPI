class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string unless User.column_names.include?('name')
    add_column :users, :token, :string
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
  end
end
