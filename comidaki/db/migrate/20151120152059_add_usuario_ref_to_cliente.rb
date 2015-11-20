class AddUsuarioRefToCliente < ActiveRecord::Migration
  def change
    add_reference :clientes, :usuario, index: true, foreign_key: true
  end
end
