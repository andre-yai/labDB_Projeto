class CreateDatabase < ActiveRecord::Migration

 def self.up
  enable_extension "plpgsql"

  create_table "administrador_de_restaurante", id: false, force: :cascade do |t|
    t.string "cnpj", limit: 14
    t.string "cpf", limit: 11
  end
  execute "ALTER TABLE administrador_de_restaurante ADD PRIMARY KEY (cpf);"

  create_table "avaliacao", id: false, force: :cascade do |t|
    t.string   "replica",    limit: 255
    t.datetime "data",                   null: false
    t.string   "comentario", limit: 255
    t.integer  "nota",                   null: false
    t.string   "cpf",        limit: 11,  null: false
    t.string   "cnpj",       limit: 14,  null: false
  end
  execute "ALTER TABLE avaliacao ADD PRIMARY KEY (cnpj,cpf, data);"

  create_table "cliente", id: false, force: :cascade do |t|
    t.string   "cpf",        limit: 11,  null: false
  end
  execute "ALTER TABLE cliente ADD PRIMARY KEY (cpf);"

  create_table "cliente_tem_endereco", id: false, force: :cascade do |t|
    t.string  "cpf",         limit: 12, null: false
    t.string  "cep",         limit: 8,  null: false
    t.integer "numero",                 null: false
    t.string  "complemento", limit: 50, null: false
  end
  execute "ALTER TABLE cliente_tem_endereco ADD PRIMARY KEY (cpf,cep, numero,complemento);"

  create_table "e_composto_por", id: false, force: :cascade do |t|
    t.integer "id_prato",       null: false
    t.integer "id_ingrediente", null: false
  end
  execute "ALTER TABLE e_composto_por ADD PRIMARY KEY (id_prato, id_ingrediente);"

  create_table "e_subtipo", id: false, force: :cascade do |t|
    t.string  "nome",         limit: 50, null: false
    t.string  "nome_subtipo", limit: 50, null: false
    t.integer "id",                      null: false
    t.integer "id_subtipo",              null: false
  end
  execute "ALTER TABLE e_subtipo ADD PRIMARY KEY (id, id_subtipo);"

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
  execute "ALTER TABLE endereco ADD PRIMARY KEY (cep,numero,complemento);"

  create_table "endereco_cliente", id: false, force: :cascade do |t|
    t.string  "cep",         limit: 8,  null: false
    t.integer "numero",                 null: false
    t.string  "complemento", limit: 50, null: false
    t.string  "cpf",         limit: 11, null: false
  end
  execute "ALTER TABLE endereco_cliente ADD PRIMARY KEY (cpf,cep,numero,complemento);"

  create_table "endereco_franquia", id: false, force: :cascade do |t|
    t.string  "cep",         limit: 8,  null: false
    t.integer "numero",                 null: false
    t.string  "complemento", limit: 50, null: false
    t.string  "cnpj",        limit: 14, null: false
  end
  execute "ALTER TABLE endereco_franquia ADD PRIMARY KEY (cnpj,cep,numero,complemento);"

  create_table "franquia",id: false, force: :cascade do |t|
    t.string  "cnpj",        limit: 14, null: false
    t.string  "nome",                      limit: 50, null: false
    t.string  "faixa_de_preco",            limit: 50, null: false
    t.integer "tempo_de_entrega_estimada",            null: false
    t.integer "custo_de_entrega_km",                  null: false
    t.integer "raio_de_entrega",                      null: false
    t.integer "nota"
    t.string  "cnpj_restaurante",          limit: 14
  end
  execute "ALTER TABLE franquia ADD PRIMARY KEY (cnpj);"

  create_table "franquia_tem_endereco", id: false, force: :cascade do |t|
    t.string  "cnpj",        limit: 14, null: false
    t.string  "cep",         limit: 8,  null: false
    t.integer "numero",                 null: false
    t.string  "complemento", limit: 50, null: false
  end
  execute "ALTER TABLE franquia_tem_endereco ADD PRIMARY KEY (cnpj, cep, numero, complemento);"

  create_table "franquia_tem_tipoculinario", id: false, force: :cascade do |t|
    t.string  "cnpj",              limit: 14, null: false
    t.string  "nome",              limit: 50, null: false
    t.integer "id_tipo_culinaria"
  end
  execute "ALTER TABLE franquia_tem_tipoculinario ADD PRIMARY KEY (cnpj,id_tipo_culinaria);"

  create_table "horario_de_funcionamento", id:false, force: :cascade do |t|
    t.string  "cnpj",              limit: 14, null: false
    t.string "dia",  limit: 50, null: false
    t.string "hora", limit: 50, null: false
  end
  execute "ALTER TABLE horario_de_funcionamento ADD PRIMARY KEY (cnpj, dia);"

  create_table "ingrediente", force: :cascade do |t|
    t.string "nome", limit: 50, null: false
    t.string "tipo", limit: 50
  end

  create_table "pedido", force: :cascade do |t|
    t.string   "status",        limit: 50, null: false
    t.datetime "data",                     null: false
    t.datetime "atualizado_em"
    t.decimal  "valor",                    null: false
    t.integer  "quantidade",               null: false
    t.string   "cpf",           limit: 11
    t.string   "cnpj",          limit: 14
    t.string   "cep",           limit: 8
    t.integer  "numero"
    t.string   "complemento",   limit: 50
  end

  create_table "pedido_tem_prato", id: false, force: :cascade do |t|
    t.integer "quantidade", null: false
    t.integer "id_pedido",  null: false
    t.integer "id_prato",   null: false
  end
  execute "ALTER TABLE pedido_tem_prato ADD PRIMARY KEY (id_pedido, id_prato);"

  create_table "prato", force: :cascade do |t|
    t.decimal "preco",                      null: false
    t.integer "valor_calorico"
    t.string  "nome",           limit: 50,  null: false
    t.string  "descricao",      limit: 255
    t.string  "imagem",         limit: 50
    t.string  "cnpj",           limit: 14
  end

  create_table "restaurante", id:false, force: :cascade do |t|
    t.string "cnpj",      limit: 14, null: false
    t.string "nome",      limit: 50,  null: false
    t.string "descricao", limit: 255
  end
  execute "ALTER TABLE restaurante ADD PRIMARY KEY (cnpj);"

  create_table "telefone", id: false, force: :cascade do |t|
    t.string "telefone", limit: 12, null: false
    t.string "cpf",      limit: 11, null: false
  end
  execute "ALTER TABLE telefone ADD PRIMARY KEY (telefone, cpf);"

  create_table "tipo_de_culinaria", force: :cascade do |t|
    t.string "nome", limit: 50, null: false
  end

  add_index "tipo_de_culinaria", ["nome"], name: "tipo_de_culinaria_nome_key", unique: true, using: :btree

  create_table "usuario", id:false, force: :cascade do |t|
    t.string "cpf",      limit: 11, null: false
    t.string "senha", limit: 50,  null: false
    t.string "nome",  limit: 255, null: false
    t.string "email", limit: 50,  null: false
  end
  execute "ALTER TABLE usuario ADD PRIMARY KEY (cpf);"

/  add_foreign_key "administrador_de_restaurante", "franquia", column: "cnpj", primary_key: "cnpj", name: "administrador_de_restaurante_cnpj_fkey"
  add_foreign_key "administrador_de_restaurante", "usuario", column: "cpf", primary_key: "cpf", name: "administrador_de_restaurante_cpf_fkey"
  add_foreign_key "avaliacao", "cliente", column: "cpf", primary_key: "cpf", name: "avaliacao_cpf_fkey"
  add_foreign_key "avaliacao", "franquia", column: "cnpj", primary_key: "cnpj", name: "avaliacao_cnpj_fkey"
  add_foreign_key "cliente", "usuario", column: "cpf", primary_key: "cpf", name: "cliente_cpf_fkey"
  add_foreign_key "cliente_tem_endereco", "cliente", column: "cpf", primary_key: "cpf", name: "cliente_tem_endereco_cpf_fkey"
  add_foreign_key "cliente_tem_endereco", "endereco_cliente", column: "cep", primary_key: "cep", name: "cliente_tem_endereco_cep_fkey"
  add_foreign_key "e_composto_por", "ingrediente", column: "id_ingrediente", name: "e_composto_por_id_ingrediente_fkey"
  add_foreign_key "e_composto_por", "prato", column: "id_prato", name: "e_composto_por_id_prato_fkey"
  add_foreign_key "e_subtipo", "tipo_de_culinaria", column: "id", name: "e_subtipo_id_fkey"
  add_foreign_key "e_subtipo", "tipo_de_culinaria", column: "id_subtipo", name: "e_subtipo_id_subtipo_fkey"
  add_foreign_key "endereco_cliente", "cliente", column: "cpf", primary_key: "cpf", name: "endereco_cliente_cpf_fkey"
  add_foreign_key "endereco_cliente", "endereco", column: "cep", primary_key: "cep", name: "endereco_cliente_cep_fkey"
  add_foreign_key "endereco_franquia", "endereco", column: "cep", primary_key: "cep", name: "endereco_franquia_cep_fkey"
  add_foreign_key "endereco_franquia", "franquia", column: "cnpj", primary_key: "cnpj", name: "endereco_franquia_cnpj_fkey"
  add_foreign_key "franquia", "restaurante", column: "cnpj_restaurante", primary_key: "cnpj", name: "franquia_cnpj_restaurante_fkey"
  add_foreign_key "franquia_tem_endereco", "endereco_franquia", column: "cep", primary_key: "cep", name: "franquia_tem_endereco_cep_fkey"
  add_foreign_key "franquia_tem_endereco", "franquia", column: "cnpj", primary_key: "cnpj", name: "franquia_tem_endereco_cnpj_fkey"
  add_foreign_key "franquia_tem_tipoculinario", "franquia", column: "cnpj", primary_key: "cnpj", name: "franquia_tem_tipoculinario_cnpj_fkey"
  add_foreign_key "franquia_tem_tipoculinario", "tipo_de_culinaria", column: "id_tipo_culinaria", name: "franquia_tem_tipoculinario_id_tipo_culinaria_fkey"
  add_foreign_key "horario_de_funcionamento", "franquia", column: "cnpj", primary_key: "cnpj", name: "horario_de_funcionamento_cnpj_fkey"
  add_foreign_key "pedido", "cliente", column: "cpf", primary_key: "cpf", name: "pedido_cpf_fkey"
  add_foreign_key "pedido", "endereco_cliente", column: "cep", primary_key: "cep", name: "pedido_cep_fkey"
  add_foreign_key "pedido", "franquia", column: "cnpj", primary_key: "cnpj", name: "pedido_cnpj_fkey"
  add_foreign_key "pedido_tem_prato", "pedido", column: "id_pedido", name: "pedido_tem_prato_id_pedido_fkey"
  add_foreign_key "pedido_tem_prato", "prato", column: "id_prato", name: "pedido_tem_prato_id_prato_fkey"
  add_foreign_key "prato", "franquia", column: "cnpj", primary_key: "cnpj", name: "prato_cnpj_fkey"
  add_foreign_key "telefone", "usuario", column: "cpf", primary_key: "cpf", name: "telefone_cpf_fkey"/
 end

  def self.down
    # drop all the tables if you really need
    # to support migration back to version 0
  end

end
