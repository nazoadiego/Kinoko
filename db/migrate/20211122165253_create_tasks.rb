class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.integer :minutes
      t.integer :seconds
      t.references :work_session, null: false, foreign_key: true
      t.integer :order
      t.boolean :done
      t.string :category

      t.timestamps
    end
  end
end
