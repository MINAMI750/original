class Schedule < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  
  has_many :schedule_tag_relations, dependent: :destroy
  has_many :tags, through: :schedule_tag_relations, dependent: :destroy

  mount_uploader :image, ImageUploader

end
