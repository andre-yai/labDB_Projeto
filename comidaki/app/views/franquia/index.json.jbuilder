json.array!(@franquia) do |franquium|
  json.extract! franquium, :id, :nome, :Faixa_de_preco, :Tempo_de_entrega_estimada, :Custo_de_entrega_km, :Raio_de_entrega, :Nota, :cnpj
  json.url franquium_url(franquium, format: :json)
end
