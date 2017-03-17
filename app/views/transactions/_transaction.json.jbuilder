json.extract! transaction, :id, :description, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)