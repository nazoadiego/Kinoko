class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks
  has_many :timeboxes, through: :tasks
  has_many :work_sessions, through: :tasks

  validates :username, presence: true, uniqueness: true
  validates :email, :password, presence: true
end
