json.extract! imagem, :id, :presente, :url, :nome, :created_at, :updated_at
json.url imagem_url(imagem, format: :json)
