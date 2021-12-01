class AddGoalToLabels < ActiveRecord::Migration[6.0]
  def change
    add_column :labels, :goal, :integer
  end
end
