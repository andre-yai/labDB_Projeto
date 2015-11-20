class AddRestauranteRefToRestauranteTemTipoCulinaria < ActiveRecord::Migration
  def change
    add_reference :restaurante_tem_tipo_culinaria, :restaurante, index: true, foreign_key: true
  end
end
