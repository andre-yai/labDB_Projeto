class CreateFranquia < ActiveRecord::Migration
  def change
    create_table :franquia do |t|
      t.string :nome, limit: 50, null: false
      t.integer :faixa_preco, null: false
      t.integer :tempo_entrega_estimado, null: false
      t.float :custo_entrega_km, default: 0 
      t.integer :raio_entrega, null: false
      t.integer :nota, default: 0
      t.string :cnpj, limit: 14, null: false, unique: true
      t.timestamps null: false
    end
  end
end
