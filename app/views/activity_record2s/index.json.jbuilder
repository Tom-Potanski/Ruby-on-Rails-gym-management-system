json.array!(@activity_record2s) do |activity_record2|
  json.extract! activity_record2, :user_id, :coach_id, :weekday_id, :start_time
  json.url activity_record2_url(activity_record2, format: :json)
end