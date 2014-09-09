class ActivityRecord2 < ActiveRecord::Base
  belongs_to :user
  belongs_to :coach
  belongs_to :weekday
end
