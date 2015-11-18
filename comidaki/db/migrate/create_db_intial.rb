# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
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

  add_foreign_key "administrador_de_restaurante", "franquia", column: "cnpj", primary_key: "cnpj", name: "administrador_de_restaurante_cnpj_fkey"
  add_foreign_key "administrador_de_restaurante", "usuario", column: "cpf", primary_key: "cpf", name: "administrador_de_restaurante_cpf_fkey"
  add_foreign_key "avaliacao", "cliente", column: "cpf", primary_key: "cpf", name: "avaliacao_cpf_fkey"
  add_foreign_key "avaliacao", "franquia", column: "cnpj", primary_key: "cnpj", name: "avaliacao_cnpj_fkey"
  add_foreign_key "cliente", "usuario", column: "cpf", primary_key: "cpf", name: "cliente_cpf_fkey"
  add_foreign_key "cliente_tem_endereco", "cliente", column: "cpf", primary_key: "cpf", name: "cliente_tem_endereco_cpf_fkey"
  add_foreign_key "cliente_tem_endereco", "endereco_cliente", column: "cep", primary_key: "cep", name: "cliente_tem_endereco_cep_fkey"
  add_foreign_key "e_composto_por", "ingrediente", column: "nome", primary_key: "nome", name: "e_composto_por_nome_fkey"
  add_foreign_key "e_composto_por", "prato", column: "id", name: "e_composto_por_id_fkey"
  add_foreign_key "e_subtipo", "tipo_de_culinaria", column: "nome", primary_key: "nome", name: "e_subtipo_nome_fkey"
  add_foreign_key "e_subtipo", "tipo_de_culinaria", column: "nome_subtipo", primary_key: "nome", name: "e_subtipo_nome_subtipo_fkey"
  add_foreign_key "endereco_cliente", "cliente", column: "cpf", primary_key: "cpf", name: "endereco_cliente_cpf_fkey"
  add_foreign_key "endereco_cliente", "endereco", column: "cep", primary_key: "cep", name: "endereco_cliente_cep_fkey"
  add_foreign_key "endereco_franquia", "endereco", column: "cep", primary_key: "cep", name: "endereco_franquia_cep_fkey"
  add_foreign_key "endereco_franquia", "franquia", column: "cnpj", primary_key: "cnpj", name: "endereco_franquia_cnpj_fkey"
  add_foreign_key "franquia", "restaurante", column: "cnpj_restaurante", primary_key: "cnpj", name: "franquia_cnpj_restaurante_fkey"
  add_foreign_key "franquia_tem_endereco", "endereco_franquia", column: "cep", primary_key: "cep", name: "franquia_tem_endereco_cep_fkey"
  add_foreign_key "franquia_tem_endereco", "franquia", column: "cnpj", primary_key: "cnpj", name: "franquia_tem_endereco_cnpj_fkey"
  add_foreign_key "franquia_tem_tipoculinario", "franquia", column: "cnpj", primary_key: "cnpj", name: "franquia_tem_tipoculinario_cnpj_fkey"
  add_foreign_key "franquia_tem_tipoculinario", "tipo_de_culinaria", column: "nome", primary_key: "nome", name: "franquia_tem_tipoculinario_nome_fkey"
  add_foreign_key "horario_de_funcionamento", "franquia", column: "cnpj", primary_key: "cnpj", name: "horario_de_funcionamento_cnpj_fkey"
  add_foreign_key "pedido", "cliente", column: "cpf", primary_key: "cpf", name: "pedido_cpf_fkey"
  add_foreign_key "pedido_tem_prato", "pedido", column: "id_pedido", name: "pedido_tem_prato_id_pedido_fkey"
  add_foreign_key "pedido_tem_prato", "prato", column: "id_prato", name: "pedido_tem_prato_id_prato_fkey"
  add_foreign_key "prato", "franquia", column: "cnpj", primary_key: "cnpj", name: "prato_cnpj_fkey"
  add_foreign_key "telefone", "usuario", column: "cpf", primary_key: "cpf", name: "telefone_cpf_fkey"
end encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
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

  add_foreign_key "administrador_de_restaurante", "franquia", column: "cnpj", primary_key: "cnpj", name: "administrador_de_restaurante_cnpj_fkey"
  add_foreign_key "administrador_de_restaurante", "usuario", column: "cpf", primary_key: "cpf", name: "administrador_de_restaurante_cpf_fkey"
  add_foreign_key "avaliacao", "cliente", column: "cpf", primary_key: "cpf", name: "avaliacao_cpf_fkey"
  add_foreign_key "avaliacao", "franquia", column: "cnpj", primary_key: "cnpj", name: "avaliacao_cnpj_fkey"
  add_foreign_key "cliente", "usuario", column: "cpf", primary_key: "cpf", name: "cliente_cpf_fkey"
  add_foreign_key "cliente_tem_endereco", "cliente", column: "cpf", primary_key: "cpf", name: "cliente_tem_endereco_cpf_fkey"
  add_foreign_key "cliente_tem_endereco", "endereco_cliente", column: "cep", primary_key: "cep", name: "cliente_tem_endereco_cep_fkey"
  add_foreign_key "e_composto_por", "ingrediente", column: "nome", primary_key: "nome", name: "e_composto_por_nome_fkey"
  add_foreign_key "e_composto_por", "prato", column: "id", name: "e_composto_por_id_fkey"
  add_foreign_key "e_subtipo", "tipo_de_culinaria", column: "nome", primary_key: "nome", name: "e_subtipo_nome_fkey"
  add_foreign_key "e_subtipo", "tipo_de_culinaria", column: "nome_subtipo", primary_key: "nome", name: "e_subtipo_nome_subtipo_fkey"
  add_foreign_key "endereco_cliente", "cliente", column: "cpf", primary_key: "cpf", name: "endereco_cliente_cpf_fkey"
  add_foreign_key "endereco_cliente", "endereco", column: "cep", primary_key: "cep", name: "endereco_cliente_cep_fkey"
  add_foreign_key "endereco_franquia", "endereco", column: "cep", primary_key: "cep", name: "endereco_franquia_cep_fkey"
  add_foreign_key "endereco_franquia", "franquia", column: "cnpj", primary_key: "cnpj", name: "endereco_franquia_cnpj_fkey"
  add_foreign_key "franquia", "restaurante", column: "cnpj_restaurante", primary_key: "cnpj", name: "franquia_cnpj_restaurante_fkey"
  add_foreign_key "franquia_tem_endereco", "endereco_franquia", column: "cep", primary_key: "cep", name: "franquia_tem_endereco_cep_fkey"
  add_foreign_key "franquia_tem_endereco", "franquia", column: "cnpj", primary_key: "cnpj", name: "franquia_tem_endereco_cnpj_fkey"
  add_foreign_key "franquia_tem_tipoculinario", "franquia", column: "cnpj", primary_key: "cnpj", name: "franquia_tem_tipoculinario_cnpj_fkey"
  add_foreign_key "franquia_tem_tipoculinario", "tipo_de_culinaria", column: "nome", primary_key: "nome", name: "franquia_tem_tipoculinario_nome_fkey"
  add_foreign_key "horario_de_funcionamento", "franquia", column: "cnpj", primary_key: "cnpj", name: "horario_de_funcionamento_cnpj_fkey"
  add_foreign_key "pedido", "cliente", column: "cpf", primary_key: "cpf", name: "pedido_cpf_fkey"
  add_foreign_key "pedido_tem_prato", "pedido", column: "id_pedido", name: "pedido_tem_prato_id_pedido_fkey"
  add_foreign_key "pedido_tem_prato", "prato", column: "id_prato", name: "pedido_tem_prato_id_prato_fkey"
  add_foreign_key "prato", "franquia", column: "cnpj", primary_key: "cnpj", name: "prato_cnpj_fkey"
  add_foreign_key "telefone", "usuario", column: "cpf", primary_key: "cpf", name: "telefone_cpf_fkey"
end
