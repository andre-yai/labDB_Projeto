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

ActiveRecord::Schema.define(version: 20151120012605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrador_de_restaurantes", force: :cascade do |t|
    t.string   "cpf"
    t.string   "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avaliacaos", force: :cascade do |t|
    t.string   "replica"
    t.datetime "data"
    t.string   "comentario"
    t.string   "nota"
    t.string   "cpf"
    t.string   "cnpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cliente_tem_enderecos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "e_composto_pors", force: :cascade do |t|
    t.integer  "id_prato"
    t.integer  "id_ingrediente"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "e_subtipos", force: :cascade do |t|
    t.string   "nome"
    t.string   "nome_subtipo"
    t.integer  "id_subtipo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "endereco_clientes", force: :cascade do |t|
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "endereco_franquia", force: :cascade do |t|
    t.string   "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string   "logradouro"
    t.string   "cep"
    t.integer  "numero"
    t.string   "complemento"
    t.string   "cidade"
    t.string   "estado"
    t.integer  "latitude"
    t.integer  "longitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "franquia", force: :cascade do |t|
    t.string   "nome"
    t.string   "Faixa_de_preco"
    t.integer  "Tempo_de_entrega_estimada"
    t.integer  "Custo_de_entrega_km"
    t.integer  "Raio_de_entrega"
    t.integer  "Nota"
    t.string   "cnpj"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "franquia_tem_enderecos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "franquia_tem_tipo_culinarios", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horario_de_funcionamentos", force: :cascade do |t|
    t.string   "dia"
    t.string   "hora"
    t.string   "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedido_tem_pratos", force: :cascade do |t|
    t.integer  "quantidade"
    t.integer  "id_pedido"
    t.integer  "id_prato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string   "status"
    t.datetime "data"
    t.datetime "atualizado_em"
    t.float    "valor"
    t.integer  "quantidade"
    t.string   "cpf"
    t.string   "cnpj"
    t.string   "cep"
    t.string   "complemento"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pratos", force: :cascade do |t|
    t.float    "preco"
    t.integer  "Valor_calorico"
    t.string   "nome"
    t.string   "descricao"
    t.string   "imagem"
    t.string   "cnpj"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telefones", force: :cascade do |t|
    t.string   "telefone"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_de_culinaria", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
