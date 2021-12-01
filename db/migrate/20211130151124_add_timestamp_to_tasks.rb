class AddTimestampToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :timestamp, :datetime
  end
end
