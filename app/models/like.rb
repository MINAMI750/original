class Like < ApplicationRecord
  belongs_to :schedule
  belongs_to :user
  validates_uniqueness_of :schedule_id, scope: :user_id
end
