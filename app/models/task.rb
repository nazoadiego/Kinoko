class Task < ApplicationRecord
  has_one :work_session, dependent: :destroy
  has_many :timeboxes, dependent: :destroy
  belongs_to :user

  validates :title, uniqueness: true
  validates :minutes, :title, presence: true
  attribute :seconds, default: 0

  def duration
    return (minutes * 60) + seconds
  end
end
