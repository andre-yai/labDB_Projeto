json.array!(@franquia_tem_enderecos) do |franquia_tem_endereco|
  json.extract! franquia_tem_endereco, :id
  json.url franquia_tem_endereco_url(franquia_tem_endereco, format: :json)
end
