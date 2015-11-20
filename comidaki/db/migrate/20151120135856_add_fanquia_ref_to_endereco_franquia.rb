class AddFanquiaRefToEnderecoFranquia < ActiveRecord::Migration
  def change
    add_reference :endereco_franquia, :franquium, index: true, foreign_key: true
  end
end
