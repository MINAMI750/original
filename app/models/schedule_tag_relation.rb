class ScheduleTagRelation < ApplicationRecord
  belongs_to :schedule
  belongs_to :tag
end
