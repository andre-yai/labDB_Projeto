class AddPratoRefToPratoECompostoPor < ActiveRecord::Migration
  def change
    add_reference :prato_e_composto_por, :pratos, foreign_key: true
  end
end
