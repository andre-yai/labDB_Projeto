class CreateAdministradorDeRestaurantes < ActiveRecord::Migration
  def change
    create_table :administrador_de_restaurantes do |t|
	t.references :restaurante, null: false
	t.references :usuario, null: false
      t.timestamps null: false
    end
  end
end
