class CreateClienteTemEnderecos < ActiveRecord::Migration
  def change
    create_table :cliente_tem_enderecos do |t|

      t.timestamps null: false
    end
  end
end
