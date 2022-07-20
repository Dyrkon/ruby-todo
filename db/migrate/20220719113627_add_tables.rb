class AddTables < ActiveRecord::Migration[7.0]
  def change
    create_table :task_lists do |t|
      t.boolean :hidden, default: false
      t.string :name, null: false
      t.timestamps
    end

    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.timestamp :deadline
      t.integer :task_list_id, null: false
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
