class CreateAdministradorDeRestaurantes < ActiveRecord::Migration
  def change
    create_table :administrador_de_restaurantes do |t|
      t.string :cpf
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
