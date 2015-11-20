class AddFranquiaRefToAdministradorDeRestaurante < ActiveRecord::Migration
  def change
    add_reference :administrador_de_restaurantes, :franquium, index: true, foreign_key: true
  end
end
