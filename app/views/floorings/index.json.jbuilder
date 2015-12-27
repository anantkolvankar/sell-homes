json.array!(@floorings) do |flooring|
  json.extract! flooring, :id, :name
  json.url flooring_url(flooring, format: :json)
end
