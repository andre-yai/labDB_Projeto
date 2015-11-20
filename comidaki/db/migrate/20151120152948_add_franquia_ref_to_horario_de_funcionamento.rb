class AddFranquiaRefToHorarioDeFuncionamento < ActiveRecord::Migration
  def change
    add_reference :horario_de_funcionamentos, :franquium, index: true, foreign_key: true
  end
end
