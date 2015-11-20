json.array!(@cliente_tem_enderecos) do |cliente_tem_endereco|
  json.extract! cliente_tem_endereco, :id
  json.url cliente_tem_endereco_url(cliente_tem_endereco, format: :json)
end
