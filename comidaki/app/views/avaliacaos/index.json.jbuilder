json.array!(@avaliacaos) do |avaliacao|
  json.extract! avaliacao, :id, :replica, :data, :comentario, :nota, :cpf, :cnpf
  json.url avaliacao_url(avaliacao, format: :json)
end
