class WorkSession < ApplicationRecord
  belongs_to :task

  # validates :task, uniqueness: true
end
