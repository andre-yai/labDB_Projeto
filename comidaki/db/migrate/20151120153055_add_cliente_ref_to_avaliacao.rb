class AddClienteRefToAvaliacao < ActiveRecord::Migration
  def change
    add_reference :avaliacaos, :cliente, index: true, foreign_key: true
  end
end
