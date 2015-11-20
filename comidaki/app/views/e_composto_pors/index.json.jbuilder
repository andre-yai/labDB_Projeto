json.array!(@e_composto_pors) do |e_composto_por|
  json.extract! e_composto_por, :id, :id_prato, :id_ingrediente
  json.url e_composto_por_url(e_composto_por, format: :json)
end
