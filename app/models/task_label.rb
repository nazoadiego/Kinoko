class TaskLabel < ApplicationRecord
  belongs_to :task
  belongs_to :label
  accepts_nested_attributes_for :label
end
