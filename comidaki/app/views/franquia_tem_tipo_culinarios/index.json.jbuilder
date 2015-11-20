json.array!(@franquia_tem_tipo_culinarios) do |franquia_tem_tipo_culinario|
  json.extract! franquia_tem_tipo_culinario, :id, :cnpj, :nome
  json.url franquia_tem_tipo_culinario_url(franquia_tem_tipo_culinario, format: :json)
end
