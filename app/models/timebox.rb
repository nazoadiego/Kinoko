class Timebox < ApplicationRecord
  belongs_to :task

  attribute :seconds, default: 0
  attribute :break, default: false
  validates :minutes, :title, presence: true
  validates :seconds, numericality: { less_than_or_equal_to: 60 }

  def duration
    return (minutes * 60) + seconds
  end
end
