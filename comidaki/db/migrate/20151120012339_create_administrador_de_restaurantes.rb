class CreateAdministradorDeRestaurantes < ActiveRecord::Migration
  def change
    create_table :administrador_de_restaurantes do |t|
      t.timestamps null: false
    end
  end
end
