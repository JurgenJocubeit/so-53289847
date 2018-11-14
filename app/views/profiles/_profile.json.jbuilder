json.extract! profile, :id, :driver_license, :city, :gender, :age, :created_at, :updated_at
json.url profile_url(profile, format: :json)
