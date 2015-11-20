json.array!(@e_subtipos) do |e_subtipo|
  json.extract! e_subtipo, :id, :nome, :nome_subtipo, :id_subtipo
  json.url e_subtipo_url(e_subtipo, format: :json)
end
