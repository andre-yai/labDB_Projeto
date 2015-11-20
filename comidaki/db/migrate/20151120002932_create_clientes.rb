class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cpf

      t.timestamps null: false
    end
  end
end
