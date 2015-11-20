class AddEnderecoFanquiaRefToFranquia < ActiveRecord::Migration
  def change
    add_reference :franquia, :endereco_franquia, index: true, foreign_key: true
  end
end
