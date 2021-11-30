class AddDurhoursToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :durhours, :float
  end
end
