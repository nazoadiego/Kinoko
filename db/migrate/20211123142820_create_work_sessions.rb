class CreateWorkSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :work_sessions do |t|
      t.integer :session_duration
      t.references :task, null: false, foreign_key: true
    end
  end
end
