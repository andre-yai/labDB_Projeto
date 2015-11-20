class AddIngredienteRefToPratoECompostoPor < ActiveRecord::Migration
  def change
    add_reference :prato_e_composto_por, :ingredientes, foreign_key: true
  end
end
