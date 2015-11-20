class AddUsuarioRefToTelefone < ActiveRecord::Migration
  def change
    add_reference :telefones, :usuario, index: true, foreign_key: true
  end
end
