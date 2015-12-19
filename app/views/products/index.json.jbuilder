json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :price, :pincode, :region, :area, :address, :user_id, :productType_id
  json.url product_url(product, format: :json)
end
