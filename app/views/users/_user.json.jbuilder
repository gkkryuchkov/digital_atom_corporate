json.extract! user, :id, :username, :work_since, :post, :created_at, :updated_at
json.url user_url(user, format: :json)
