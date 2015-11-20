class CreateEnderecoClientes < ActiveRecord::Migration
  def change
    create_table :endereco_clientes do |t|
      t.string :cpf

      t.timestamps null: false
    end
  end
end
