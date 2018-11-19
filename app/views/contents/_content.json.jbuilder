json.extract! content, :id, :title, :created_at, :updated_at
json.profile content.profile do |profile|
    json.min_age profile.min_age
    json.max_age profile.max_age
    json.age profile.age
    json.city profile.city
    json.gender profile.gender
    json.license profile.license
  end
json.url content_url(content, format: :json)
