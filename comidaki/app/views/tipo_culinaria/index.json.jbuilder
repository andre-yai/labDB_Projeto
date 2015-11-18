json.array!(@tipo_culinaria) do |tipo_culinarium|
  json.extract! tipo_culinarium, :id, :nome
  json.url tipo_culinarium_url(tipo_culinarium, format: :json)
end
