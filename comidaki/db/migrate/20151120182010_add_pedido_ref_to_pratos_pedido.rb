class AddPedidoRefToPratosPedido < ActiveRecord::Migration
  def change
    add_reference :pratos_pedido, :pedidos, foreign_key: true
  end
end
