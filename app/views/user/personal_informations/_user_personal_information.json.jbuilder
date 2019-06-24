json.extract! user_personal_information, :id, :real_name, :address, :user_id, :created_at, :updated_at
json.url user_personal_information_url(user_personal_information, format: :json)
