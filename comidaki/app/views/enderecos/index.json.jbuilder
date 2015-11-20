json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :logradouro, :cep, :numero, :complemento, :cidade, :estado, :latitude, :longitude
  json.url endereco_url(endereco, format: :json)
end
