class AddTipoDeCulinariaRefToRestauranteTemTipoCulinaria < ActiveRecord::Migration
  def change
    add_reference :restaurante_tem_tipo_culinaria, :tipo_de_culinaria, index: true, foreign_key: true
  end
end
