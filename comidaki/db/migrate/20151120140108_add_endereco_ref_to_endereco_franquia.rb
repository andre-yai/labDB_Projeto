class AddEnderecoRefToEnderecoFranquia < ActiveRecord::Migration
  def change
    add_reference :endereco_franquium, :endereco, index: true, foreign_key: true
  end
end
