class AddFranquiaRefToAdministradorDeRestaurante < ActiveRecord::Migration
  def change
    add_reference :administrador_de_restaurantes, :franquia, index: true, foreign_key: true
  end
end
