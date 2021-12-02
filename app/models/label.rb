class Label < ApplicationRecord
  has_many :task_labels, dependent: :destroy
  has_many :tasks, through: :task_labels
  attribute :seconds, default: 1

  def donetasksdur
    durations = tasks.map do |task|
      if task.done == true
        task.dur_hours
      else
        0.0
      end
    end
    return durations.sum
  end

  # def labeldurdate
  #   sum = Label.all.sum do |label|
  #     label.donetasksdur
  #   end
  # end
end
