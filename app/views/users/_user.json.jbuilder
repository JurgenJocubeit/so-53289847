json.extract! user, :id, :name, :age, :city, :gender, :license, :created_at, :updated_at
json.url user_url(user, format: :json)
