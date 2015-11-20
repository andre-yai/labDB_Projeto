class AddClienteRefToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :cliente, index: true, foreign_key: true
  end
end
