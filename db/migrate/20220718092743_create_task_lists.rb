class CreateTaskLists < ActiveRecord::Migration[7.0]
  def change
    create_table :task_lists do |t|
      t.integer :task_count

      t.timestamps
    end
  end
end
