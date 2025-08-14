class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :schedules, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_schdules, through: :likes, source: :schedule
  def already_liked?(schedule)
    self.likes.exists?(schedule_id: schedule.id)
  end

  validates :name, presence: true 
  validates :profile, length: { maximum: 200 }
end
