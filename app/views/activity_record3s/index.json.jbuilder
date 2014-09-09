json.array!(@activity_record3s) do |activity_record3|
  json.extract! activity_record3, :user_id, :coach_id, :weekday_id, :start_time, :activity_id
  json.url activity_record3_url(activity_record3, format: :json)
end