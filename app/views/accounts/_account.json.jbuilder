json.extract! account, :id, :name, :kind, :balance, :currency, :created_at, :updated_at
json.url account_url(account, format: :json)