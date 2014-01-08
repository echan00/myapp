json.array!(@products) do |product|
  json.extract! product, :id, :url, :name, :image, :title, :createdby
  json.url product_url(product, format: :json)
end
