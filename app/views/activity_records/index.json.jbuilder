json.array!(@activity_records) do |activity_record|
  json.extract! activity_record, :activity_id, :coach_id_integer, :user_id
  json.url activity_record_url(activity_record, format: :json)
end