class ActivityRecord3 < ActiveRecord::Base
  belongs_to :user
  belongs_to :coach
  belongs_to :weekday
  belongs_to :activity
end
