class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :status
      t.timestamp :data
      t.timestamp :atualizado_em
      t.float :valor
      t.integer :quantidade
      t.string :cpf
      t.string :cnpj
      t.string :cep
      t.string :complemento

      t.timestamps null: false
    end
  end
end
