json.array!(@tipo_de_culinaria) do |tipo_de_culinarium|
  json.extract! tipo_de_culinarium, :id, :nome
  json.url tipo_de_culinarium_url(tipo_de_culinarium, format: :json)
end
