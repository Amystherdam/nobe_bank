json.extract! account, :id, :bank_number, :agency, :balance, :account_type_id, :client_id, :created_at, :updated_at
json.url account_url(account, format: :json)
