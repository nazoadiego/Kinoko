class AddBreakToTimeboxes < ActiveRecord::Migration[6.0]
  def change
    add_column :timeboxes, :break, :boolean
  end
end
