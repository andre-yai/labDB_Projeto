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

ActiveRecord::Schema.define(version: 20151120012339) do

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "endereco_franquia", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
  end

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

  create_table "pratos", force: :cascade do |t|
    t.float    "preco",          null: false
    t.integer  "Valor_calorico"
    t.string   "nome",           null: false
    t.string   "descricao"
    t.string   "imagem"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

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

end
