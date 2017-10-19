class EditingTasksDatabase < ActiveRecord::Migration[5.1]
  def change
    
    remove_column :tasks, :token, :string if Task.column_names.include?('token')
    remove_column :tasks, :email, :string if Task.column_names.include?('email')
    remove_column :tasks, :password_digest, :string if Task.column_names.include?('password_digest')
    remove_column :tasks, :active, :boolean if Task.column_names.include?('active')
    remove_column :tasks, :done, :boolean if Task.column_names.include?('done')
    add_column :tasks, :status, :string
  end
end
