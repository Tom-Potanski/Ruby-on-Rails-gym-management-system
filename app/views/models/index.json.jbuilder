json.array!(@models) do |model|
  json.extract! model, :weekday, :name
  json.url model_url(model, format: :json)
end