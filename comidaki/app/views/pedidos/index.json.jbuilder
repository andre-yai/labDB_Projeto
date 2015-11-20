json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :status, :data, :atualizado_em, :valor, :quantidade, :cpf, :cnpj, :cep, :complemento
  json.url pedido_url(pedido, format: :json)
end
