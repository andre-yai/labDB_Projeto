json.array!(@administrador_de_restaurantes) do |administrador_de_restaurante|
  json.extract! administrador_de_restaurante, :id, :cpf, :cnpj
  json.url administrador_de_restaurante_url(administrador_de_restaurante, format: :json)
end
