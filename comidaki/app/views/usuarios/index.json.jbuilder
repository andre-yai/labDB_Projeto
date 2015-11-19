json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :cpf, :nome, :email, :senha
  json.url usuario_url(usuario, format: :json)
end
