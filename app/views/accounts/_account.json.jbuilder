json.extract! account, :id, :name, :description, :status, :created_at, :updated_at
json.url account_url(account, format: :json)