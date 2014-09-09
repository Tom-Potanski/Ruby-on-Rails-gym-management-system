class Activity < ActiveRecord::Base
  has_many :activity_records, dependent: :destroy
end
