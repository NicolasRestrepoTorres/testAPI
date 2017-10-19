class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string unless User.column_names.include?('name')
    add_column :users, :token, :string unless User.column_names.include?('token')
    add_column :users, :email, :string unless User.column_names.include?('email')
    add_column :users, :password_digest, :string unless User.column_names.include?('password_digest')
  end
end
