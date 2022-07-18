class RemoveRedundantColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :task_lists, :task_count
  end
end
