class AddEnderecoClienteRefToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :endereco_cliente, index: true, foreign_key: true
  end
end
