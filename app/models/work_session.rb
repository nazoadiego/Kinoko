class WorkSession < ApplicationRecord
  belongs_to :task

  # validates :task, uniqueness: true ->probar que no falle al implementarlo
end
