json.array!(@endereco_clientes) do |endereco_cliente|
  json.extract! endereco_cliente, :id, :cpf
  json.url endereco_cliente_url(endereco_cliente, format: :json)
end
