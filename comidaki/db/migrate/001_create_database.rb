class CreateDatabase < ActiveRecord::Migration

 def self.up
  enable_extension "plpgsql"

  create_table "administrador_de_restaurante", primary_key: "cpf", force: :cascade do |t|
    t.string "cnpj", limit: 14
  end

  create_table "avaliacao", id: false, force: :cascade do |t|
    t.string   "replica",    limit: 255
    t.datetime "data",                   null: false
    t.string   "comentario", limit: 255
    t.integer  "nota",                   null: false
    t.string   "cpf",        limit: 11,  null: false
    t.string   "cnpj",       limit: 14,  null: false
  end

  create_table "cliente", primary_key: "cpf", force: :cascade do |t|
  end

  create_table "cliente_tem_endereco", id: false, force: :cascade do |t|
    t.string  "cpf",         limit: 12, null: false
    t.string  "cep",         limit: 8,  null: false
    t.integer "numero",                 null: false
    t.string  "complemento", limit: 50, null: false
  end

  create_table "e_composto_por", id: false, force: :cascade do |t|
    t.integer "id",              null: false
    t.string  "nome", limit: 50, null: false
  end

  create_table "e_subtipo", id: false, force: :cascade do |t|
    t.string "nome",         limit: 50, null: false
    t.string "nome_subtipo", limit: 50, null: false
  end

  create_table "endereco", id: false, force: :cascade do |t|
    t.string  "logradouro",  limit: 255, null: false
    t.string  "cep",         limit: 8,   null: false
    t.integer "numero",                  null: false
    t.string  "complemento", limit: 50,  null: false
    t.string  "cidade",      limit: 50,  null: false
    t.string  "estado",      limit: 50,  null: false
    t.decimal "latitude"
    t.decimal "longitude"
  end

  create_table "endereco_cliente", id: false, force: :cascade do |t|
    t.string  "cep",         limit: 8,  null: false
    t.integer "numero",                 null: false
    t.string  "complemento", limit: 50, null: false
    t.string  "cpf",         limit: 11, null: false
  end

  create_table "endereco_franquia", id: false, force: :cascade do |t|
    t.string  "cep",         limit: 8,  null: false
    t.integer "numero",                 null: false
    t.string  "complemento", limit: 50, null: false
    t.string  "cnpj",        limit: 14, null: false
  end

  create_table "franquia", primary_key: "cnpj", force: :cascade do |t|
    t.string  "nome",                      limit: 50,  null: false
    t.string  "descricao",                 limit: 255
    t.string  "faixa_de_preco",            limit: 50,  null: false
    t.integer "tempo_de_entrega_estimada",             null: false
    t.integer "custo_de_entrega_km",                   null: false
    t.integer "raio_de_entrega",                       null: false
    t.integer "nota"
    t.string  "cnpj_restaurante",          limit: 14
  end

  create_table "franquia_tem_endereco", id: false, force: :cascade do |t|
    t.string  "cnpj",        limit: 14, null: false
    t.string  "cep",         limit: 8,  null: false
    t.integer "numero",                 null: false
    t.string  "complemento", limit: 50, null: false
  end

  create_table "franquia_tem_tipoculinario", id: false, force: :cascade do |t|
    t.string "cnpj", limit: 14, null: false
    t.string "nome", limit: 50, null: false
  end

  create_table "horario_de_funcionamento", primary_key: "cnpj", force: :cascade do |t|
    t.string "dia",  limit: 50, null: false
    t.string "hora", limit: 50, null: false
  end

  create_table "ingrediente", primary_key: "nome", force: :cascade do |t|
    t.string "tipo", limit: 50
  end

  create_table "pedido", force: :cascade do |t|
    t.string   "status",            limit: 50, null: false
    t.datetime "data",                         null: false
    t.datetime "atualizado_em"
    t.integer  "atraso_aproximado"
    t.decimal  "valor",                        null: false
    t.integer  "quantidade",                   null: false
    t.string   "cpf",               limit: 11
    t.string   "cnpj",              limit: 14
  end

  create_table "pedido_tem_prato", id: false, force: :cascade do |t|
    t.integer "quantidade", null: false
    t.integer "id_pedido",  null: false
    t.integer "id_prato",   null: false
  end

  create_table "prato", force: :cascade do |t|
    t.decimal "preco",                      null: false
    t.integer "valor_calorico"
    t.string  "nome",           limit: 50,  null: false
    t.string  "descricao",      limit: 255
    t.string  "imagem",         limit: 50
    t.string  "cnpj",           limit: 14
  end

  create_table "restaurante", primary_key: "cnpj", force: :cascade do |t|
    t.string "nome", limit: 50, null: false
  end

  create_table "telefone", id: false, force: :cascade do |t|
    t.string "telefone", limit: 12, null: false
    t.string "cpf",      limit: 11, null: false
  end

  create_table "tipo_de_culinaria", primary_key: "nome", force: :cascade do |t|
  end

  create_table "usuario", primary_key: "cpf", force: :cascade do |t|
    t.string "senha", limit: 50,  null: false
    t.string "nome",  limit: 255, null: false
    t.string "email", limit: 50,  null: false
  end

end

  def self.down
    # drop all the tables if you really need
    # to support migration back to version 0
  end

end
