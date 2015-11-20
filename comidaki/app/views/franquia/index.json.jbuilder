json.array!(@franquia) do |franquium|
  json.extract! franquium, :id, :nome, :faixa_preco, :tempo_entrega_estimado, :custo_entrega_km, :raio_entrega, :nota, :cnpj
  json.url franquium_url(franquium, format: :json)
end
