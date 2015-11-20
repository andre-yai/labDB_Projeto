class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.float :preco, null: false
      t.integer :Valor_calorico 
      t.string :nome, null: false
      t.string :descricao 
      t.string :imagem 

      t.timestamps null: false
    end
  end
end
