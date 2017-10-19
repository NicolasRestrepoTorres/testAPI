class EditingTasksDatabase < ActiveRecord::Migration[5.1]
  def change
    
    remove_column :tasks, :token, :string
    remove_column :tasks, :email, :string
    remove_column :tasks, :password_digest, :string
    remove_column :tasks, :active, :boolean
    remove_column :tasks, :done, :boolean
    add_column :tasks, :status, :string
  end
end
