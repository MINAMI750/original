class Tag < ApplicationRecord
validates :name, presence: true
  has_many :schedule_tag_relations, dependent: :destroy
  has_many :schedules, through: :schedule_tag_relations, dependent: :destroy
end
