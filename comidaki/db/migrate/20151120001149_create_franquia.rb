class CreateFranquia < ActiveRecord::Migration
  def change
    create_table :franquia do |t|
      t.string :nome
      t.string :Faixa_de_preco
      t.integer :Tempo_de_entrega_estimada
      t.integer :Custo_de_entrega_km
      t.integer :Raio_de_entrega
      t.integer :Nota
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
