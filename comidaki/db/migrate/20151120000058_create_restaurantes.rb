class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :cnpj, null: false, unique: true
      t.string :nome, null: false, unique: true
      t.string :descricao, null: false 

      t.timestamps null: false
    end
  end
end
