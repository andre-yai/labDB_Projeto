json.array!(@ingredientes) do |ingrediente|
  json.extract! ingrediente, :id, :nome, :tipo
  json.url ingrediente_url(ingrediente, format: :json)
end
