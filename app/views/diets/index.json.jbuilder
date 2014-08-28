json.array!(@diets) do |diet|
  json.extract! diet, :name, :description
  json.url diet_url(diet, format: :json)
end