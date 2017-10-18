class AddColumnsToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :name, :string
    add_column :tasks, :priority, :integer, default: 0
  end
end
