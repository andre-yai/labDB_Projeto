class AddTipoDeCulinariaRefToSubtipoCulinaria < ActiveRecord::Migration
  def change
    add_reference :subtipo_culinaria, :tipo_de_culinaria, index: true, foreign_key: true
  end
end
