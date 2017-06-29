json.extract! carro, :id, :name, :marca, :created_at, :updated_at
json.url carro_url(carro, format: :json)
