class SetNullability < ActiveRecord::Migration[7.0]
  def change
    change_column_null :tasks, :name, false
    change_column_default :tasks, :done, false
  end
end
