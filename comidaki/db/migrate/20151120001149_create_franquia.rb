class CreateFranquia < ActiveRecord::Migration
  def change
    create_table :franquia do |t|
      t.string :nome, null: false
      t.string :Faixa_de_preco, null: false
      t.integer :Tempo_de_entrega_estimada, null: false
      t.float :Custo_de_entrega_km, null: false
      t.integer :Raio_de_entrega, null: false
      t.integer :Nota, default: 0
      t.string :cnpj, null: false, unique: true 

      t.timestamps null: false
    end
  end
end
