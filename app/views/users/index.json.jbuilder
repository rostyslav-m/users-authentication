json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :email, :phone, :password
  json.url user_url(user, format: :json)
end
