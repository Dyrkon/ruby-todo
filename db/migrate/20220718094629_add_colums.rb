class AddColums < ActiveRecord::Migration[7.0]
  def change
    add_column :task_lists, :task_id, :bigint
    add_foreign_key :task_lists, :tasks, if_not_exists: true, on_delete: :cascade
    add_column :tasks, :done, :boolean
  end
end
