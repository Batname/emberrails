json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :title, :price, :description, :image
  json.url shop_url(shop, format: :json)
end
