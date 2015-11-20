json.array!(@horario_de_funcionamentos) do |horario_de_funcionamento|
  json.extract! horario_de_funcionamento, :id, :dia, :hora, :cnpj
  json.url horario_de_funcionamento_url(horario_de_funcionamento, format: :json)
end
