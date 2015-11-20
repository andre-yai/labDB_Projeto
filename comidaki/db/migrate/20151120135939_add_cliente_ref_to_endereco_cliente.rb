class AddClienteRefToEnderecoCliente < ActiveRecord::Migration
  def change
    add_reference :endereco_clientes, :cliente, index: true, foreign_key: true
  end
end
