json.extract! content, :id, :title, :driver_license, :city, :gender, :age, :created_at, :updated_at
json.url content_url(content, format: :json)
