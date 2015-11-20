json.array!(@pedido_tem_pratos) do |pedido_tem_prato|
  json.extract! pedido_tem_prato, :id, :quantidade, :id_pedido, :id_prato
  json.url pedido_tem_prato_url(pedido_tem_prato, format: :json)
end
