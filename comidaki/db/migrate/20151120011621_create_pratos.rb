class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.float :preco
      t.integer :Valor_calorico
      t.string :nome
      t.string :descricao
      t.string :imagem
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
