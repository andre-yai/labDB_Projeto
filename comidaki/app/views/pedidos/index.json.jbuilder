json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :ID, :status, :data, :atualizado_em, :atraso_aproximado, :valor, :quantidade, :cpf, :cnpj
  json.url pedido_url(pedido, format: :json)
end
