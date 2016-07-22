json.extract! user, :id, :rut, :nombre, :apellido, :email, :nacimiento, :password, :avatar, :created_at, :updated_at
json.url user_url(user, format: :json)