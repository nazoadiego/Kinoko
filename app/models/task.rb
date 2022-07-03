class Task < ApplicationRecord
  has_one :work_session, dependent: :destroy
  has_many :timeboxes, dependent: :destroy
  has_many :task_labels, dependent: :destroy
  has_many :labels, through: :task_labels
  belongs_to :user

  validates :minutes, :title, presence: true
  attribute :seconds, default: 0

  def duration
    return (minutes * 60) + seconds
  end

  def dur_hours
    return ((minutes.to_f / 60.0) + (seconds.to_f / 3600.0))
  end

  def done?
    done
  end
end
