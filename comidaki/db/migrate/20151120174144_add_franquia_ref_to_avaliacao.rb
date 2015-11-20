class AddFranquiaRefToAvaliacao < ActiveRecord::Migration
  def change
    add_reference :avaliacaos, :franquium, index: true, foreign_key: true
  end
end
