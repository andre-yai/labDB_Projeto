class AddEnderecoRefToEnderecoCliente < ActiveRecord::Migration
  def change
    add_reference :endereco_clientes, :endereco, index: true, foreign_key: true
  end
end
