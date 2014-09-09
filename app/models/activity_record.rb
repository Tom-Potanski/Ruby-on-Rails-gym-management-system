class ActivityRecord < ActiveRecord::Base
  belongs_to :coach
  belongs_to :user
  belongs_to :weekday
end
