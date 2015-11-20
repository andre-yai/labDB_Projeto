class AddPedidoRefToPratosPedido < ActiveRecord::Migration
  def change
    add_reference :pratos_pedido, :pedido, index: true, foreign_key: true
  end
end
