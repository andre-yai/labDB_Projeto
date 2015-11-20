class AddFranquiaRefToEnderecoFranquia < ActiveRecord::Migration
  def change
    add_reference :endereco_franquia, :franquia, index: true, foreign_key: true
  end
end
