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

ActiveRecord::Schema.define(version: 20151120143231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrador_de_restaurantes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avaliacaos", force: :cascade do |t|
    t.string   "replica"
    t.string   "comentario"
    t.string   "nota",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string   "nome",                                  null: false
    t.string   "Faixa_de_preco",                        null: false
    t.integer  "Tempo_de_entrega_estimada",             null: false
    t.float    "Custo_de_entrega_km",                   null: false
    t.integer  "Raio_de_entrega",                       null: false
    t.integer  "Nota",                      default: 0
    t.string   "cnpj",                                  null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "restaurante_id"
    t.integer  "endereco_franquium_id"
  end

  add_index "franquia", ["endereco_franquium_id"], name: "index_franquia_on_endereco_franquium_id", using: :btree
  add_index "franquia", ["restaurante_id"], name: "index_franquia_on_restaurante_id", using: :btree

  create_table "horario_de_funcionamentos", force: :cascade do |t|
    t.string   "dia",        null: false
    t.string   "hora",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredientes", force: :cascade do |t|
    t.string   "nome",       null: false
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string   "status",     default: "em processamento", null: false
    t.datetime "data",                                    null: false
    t.float    "valor",                                   null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "prato_e_composto_por", id: false, force: :cascade do |t|
    t.integer "prato_id",       null: false
    t.integer "ingrediente_id", null: false
    t.float   "quantidade"
  end

  add_index "prato_e_composto_por", ["ingrediente_id", "prato_id"], name: "index_prato_e_composto_por_on_ingrediente_id_and_prato_id", using: :btree
  add_index "prato_e_composto_por", ["prato_id", "ingrediente_id"], name: "index_prato_e_composto_por_on_prato_id_and_ingrediente_id", using: :btree

  create_table "pratos", force: :cascade do |t|
    t.float    "preco",          null: false
    t.integer  "Valor_calorico"
    t.string   "nome",           null: false
    t.string   "descricao"
    t.string   "imagem"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pratos_pedido", id: false, force: :cascade do |t|
    t.integer "prato_id",   null: false
    t.integer "pedido_id",  null: false
    t.float   "quantidade"
  end

  add_index "pratos_pedido", ["pedido_id", "prato_id"], name: "index_pratos_pedido_on_pedido_id_and_prato_id", using: :btree
  add_index "pratos_pedido", ["prato_id", "pedido_id"], name: "index_pratos_pedido_on_prato_id_and_pedido_id", using: :btree

  create_table "restaurantes", force: :cascade do |t|
    t.string   "cnpj",       null: false
    t.string   "nome",       null: false
    t.string   "descricao",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telefones", force: :cascade do |t|
    t.string   "telefone",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  add_foreign_key "endereco_clientes", "clientes"
  add_foreign_key "endereco_clientes", "enderecos"
  add_foreign_key "endereco_franquia", "enderecos"
  add_foreign_key "endereco_franquia", "franquia"
  add_foreign_key "franquia", "endereco_franquia"
  add_foreign_key "franquia", "restaurantes"
end
