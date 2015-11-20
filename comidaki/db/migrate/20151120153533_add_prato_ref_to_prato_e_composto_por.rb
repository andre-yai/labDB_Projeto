class AddPratoRefToPratoECompostoPor < ActiveRecord::Migration
  def change
    add_reference :prato_e_composto_pors, :prato, index: true, foreign_key: true
  end
end
