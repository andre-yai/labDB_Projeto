class AddUsuarioRefToAdministradorDeRestaurante < ActiveRecord::Migration
  def change
    add_reference :administrador_de_restaurantes, :usuario, index: true, foreign_key: true
  end
end
