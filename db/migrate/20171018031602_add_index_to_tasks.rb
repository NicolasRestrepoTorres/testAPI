class AddIndexToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :token, :string
    add_column :tasks, :email, :string
    add_column :tasks, :password_digest, :string
    add_index :tasks, :token
  end
end
