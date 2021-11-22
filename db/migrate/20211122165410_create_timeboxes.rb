class CreateTimeboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :timeboxes do |t|
      t.string :title
      t.integer :minutes
      t.integer :seconds
      t.references :task, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer :order
      t.boolean :active

      t.timestamps
    end
  end
end
