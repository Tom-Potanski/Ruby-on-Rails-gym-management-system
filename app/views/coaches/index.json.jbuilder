json.array!(@coaches) do |coach|
  json.extract! coach, :name, :description
  json.url coach_url(coach, format: :json)
end