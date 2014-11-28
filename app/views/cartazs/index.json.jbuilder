json.array!(@cartazs) do |cartaz|
  json.extract! cartaz, :id, :imagem, :titulo, :sinopse, :cinema
  json.url cartaz_url(cartaz, format: :json)
end
