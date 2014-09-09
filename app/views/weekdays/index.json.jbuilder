json.array!(@weekdays) do |weekday|
  json.extract! weekday, :name
  json.url weekday_url(weekday, format: :json)
end