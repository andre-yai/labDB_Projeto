json.array!(@telefones) do |telefone|
  json.extract! telefone, :id, :telefone, :cpf
  json.url telefone_url(telefone, format: :json)
end
