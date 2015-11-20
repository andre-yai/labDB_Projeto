class AddPratoRefToPratosPedido < ActiveRecord::Migration
  def change
    add_reference :pratos_pedido, :pratos, foreign_key: true
  end
end
