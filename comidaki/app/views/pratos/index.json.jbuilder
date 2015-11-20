json.array!(@pratos) do |prato|
  json.extract! prato, :id, :preco, :Valor_calorico, :nome, :descricao, :imagem, :cnpj
  json.url prato_url(prato, format: :json)
end
