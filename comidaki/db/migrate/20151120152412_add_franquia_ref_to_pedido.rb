class AddFranquiaRefToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :franquium, index: true, foreign_key: true
  end
end
