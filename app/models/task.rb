class Task < ApplicationRecord
  belongs_to :user
  has_one :work_session
  has_many :timeboxes

  validates :title, uniqueness: true
  validates :minutes, :title, presence: true
  attribute :seconds, default: 0
end
