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

ActiveRecord::Schema.define(version: 20151120183232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrador_de_restaurantes", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "franquium_id"
    t.integer  "usuario_id"
  end

  add_index "administrador_de_restaurantes", ["franquium_id"], name: "index_administrador_de_restaurantes_on_franquium_id", using: :btree
  add_index "administrador_de_restaurantes", ["usuario_id"], name: "index_administrador_de_restaurantes_on_usuario_id", using: :btree

  create_table "avaliacaos", force: :cascade do |t|
    t.string   "replica"
    t.string   "comentario"
    t.string   "nota",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "cliente_id"
    t.integer  "franquium_id"
  end

  add_index "avaliacaos", ["cliente_id"], name: "index_avaliacaos_on_cliente_id", using: :btree
  add_index "avaliacaos", ["franquium_id"], name: "index_avaliacaos_on_franquium_id", using: :btree

  create_table "clientes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
  end

  add_index "clientes", ["usuario_id"], name: "index_clientes_on_usuario_id", using: :btree

  create_table "endereco_clientes", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cliente_id"
    t.integer  "endereco_id"
  end

  add_index "endereco_clientes", ["cliente_id"], name: "index_endereco_clientes_on_cliente_id", using: :btree
  add_index "endereco_clientes", ["endereco_id"], name: "index_endereco_clientes_on_endereco_id", using: :btree

  create_table "endereco_franquia", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "franquium_id"
    t.integer  "endereco_id"
  end

  add_index "endereco_franquia", ["endereco_id"], name: "index_endereco_franquia_on_endereco_id", using: :btree
  add_index "endereco_franquia", ["franquium_id"], name: "index_endereco_franquia_on_franquium_id", using: :btree

  create_table "enderecos", force: :cascade do |t|
    t.string   "logradouro",  null: false
    t.string   "cep",         null: false
    t.integer  "numero",      null: false
    t.string   "complemento"
    t.string   "cidade",      null: false
    t.string   "estado",      null: false
    t.integer  "latitude"
    t.integer  "longitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "franquia", force: :cascade do |t|
    t.string   "nome",                   limit: 50,               null: false
    t.integer  "faixa_preco",                                     null: false
    t.integer  "tempo_entrega_estimado",                          null: false
    t.float    "custo_entrega_km",                  default: 0.0
    t.integer  "raio_entrega",                                    null: false
    t.integer  "nota",                              default: 0
    t.string   "cnpj",                   limit: 14,               null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "restaurante_id"
  end

  add_index "franquia", ["restaurante_id"], name: "index_franquia_on_restaurante_id", using: :btree

  create_table "horario_de_funcionamentos", force: :cascade do |t|
    t.string   "dia",          null: false
    t.string   "hora",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "franquium_id"
  end

  add_index "horario_de_funcionamentos", ["franquium_id"], name: "index_horario_de_funcionamentos_on_franquium_id", using: :btree

  create_table "ingredientes", force: :cascade do |t|
    t.string   "nome",       null: false
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string   "status",              default: "em processamento", null: false
    t.datetime "data",                                             null: false
    t.float    "valor",                                            null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "cliente_id"
    t.integer  "endereco_cliente_id"
    t.integer  "franquium_id"
  end

  add_index "pedidos", ["cliente_id"], name: "index_pedidos_on_cliente_id", using: :btree
  add_index "pedidos", ["endereco_cliente_id"], name: "index_pedidos_on_endereco_cliente_id", using: :btree
  add_index "pedidos", ["franquium_id"], name: "index_pedidos_on_franquium_id", using: :btree

  create_table "prato_e_composto_por", id: false, force: :cascade do |t|
    t.integer "prato_id",        null: false
    t.integer "ingrediente_id",  null: false
    t.float   "quantidade"
    t.integer "pratos_id"
    t.integer "ingredientes_id"
  end

  create_table "pratos", force: :cascade do |t|
    t.float    "preco",          null: false
    t.integer  "Valor_calorico"
    t.string   "nome",           null: false
    t.string   "descricao"
    t.string   "imagem"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "restaurante_id"
  end

  add_index "pratos", ["restaurante_id"], name: "index_pratos_on_restaurante_id", using: :btree

  create_table "pratos_pedido", id: false, force: :cascade do |t|
    t.integer "prato_id",   null: false
    t.integer "pedido_id",  null: false
    t.float   "quantidade"
    t.integer "pratos_id"
    t.integer "pedidos_id"
  end

  create_table "restaurante_tem_tipo_culinaria", id: false, force: :cascade do |t|
    t.integer "restaurante_id",        null: false
    t.integer "tipo_de_culinarium_id", null: false
    t.integer "restaurantes_id"
    t.integer "tipo_de_culinaria_id"
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string   "cnpj",       null: false
    t.string   "nome",       null: false
    t.string   "descricao",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subtipo_culinaria", id: false, force: :cascade do |t|
    t.integer "tipo_de_culinarium_id", null: false
    t.integer "tipo_de_culinaria_id"
  end

  add_index "subtipo_culinaria", ["tipo_de_culinaria_id"], name: "index_subtipo_culinaria_on_tipo_de_culinaria_id", using: :btree

  create_table "telefones", force: :cascade do |t|
    t.string   "telefone",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
  end

  add_index "telefones", ["usuario_id"], name: "index_telefones_on_usuario_id", using: :btree

  create_table "tipo_de_culinaria", force: :cascade do |t|
    t.string   "nome",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "cpf",        null: false
    t.string   "nome",       null: false
    t.string   "email",      null: false
    t.string   "senha",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "administrador_de_restaurantes", "franquia"
  add_foreign_key "administrador_de_restaurantes", "usuarios"
  add_foreign_key "avaliacaos", "clientes"
  add_foreign_key "avaliacaos", "franquia"
  add_foreign_key "clientes", "usuarios"
  add_foreign_key "endereco_clientes", "clientes"
  add_foreign_key "endereco_clientes", "enderecos"
  add_foreign_key "endereco_franquia", "enderecos"
  add_foreign_key "endereco_franquia", "franquia"
  add_foreign_key "franquia", "restaurantes"
  add_foreign_key "horario_de_funcionamentos", "franquia"
  add_foreign_key "pedidos", "clientes"
  add_foreign_key "pedidos", "endereco_clientes"
  add_foreign_key "pedidos", "franquia"
  add_foreign_key "prato_e_composto_por", "ingredientes"
  add_foreign_key "prato_e_composto_por", "pratos"
  add_foreign_key "pratos", "restaurantes"
  add_foreign_key "pratos_pedido", "pedidos"
  add_foreign_key "pratos_pedido", "pratos"
  add_foreign_key "restaurante_tem_tipo_culinaria", "restaurantes"
  add_foreign_key "restaurante_tem_tipo_culinaria", "tipo_de_culinaria"
  add_foreign_key "subtipo_culinaria", "tipo_de_culinaria"
  add_foreign_key "telefones", "usuarios"
end
