json.array!(@propertys) do |property|
  json.extract! property, :id, :title, :description, :price, :pincode, :region, :area, :address, :user_id, :propertyType_id
  json.url property_url(property, format: :json)
end
