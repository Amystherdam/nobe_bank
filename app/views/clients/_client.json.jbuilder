json.extract! client, :id, :name_client, :national_id, :phone, :email, :created_at, :updated_at
json.url client_url(client, format: :json)
