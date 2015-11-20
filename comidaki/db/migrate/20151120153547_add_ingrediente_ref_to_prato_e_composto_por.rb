class AddIngredienteRefToPratoECompostoPor < ActiveRecord::Migration
  def change
    add_reference :prato_e_composto_pors, :ingrediente, index: true, foreign_key: true
  end
end
