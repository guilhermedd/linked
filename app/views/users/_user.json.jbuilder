json.extract! user, :id, :name, :bio, :picture, :banner, :created_at, :updated_at
json.url user_url(user, format: :json)
