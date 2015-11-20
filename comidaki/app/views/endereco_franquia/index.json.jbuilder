json.array!(@endereco_franquia) do |endereco_franquium|
  json.extract! endereco_franquium, :id
  json.url endereco_franquium_url(endereco_franquium, format: :json)
end
