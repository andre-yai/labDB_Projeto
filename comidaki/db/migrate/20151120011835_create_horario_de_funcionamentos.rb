class CreateHorarioDeFuncionamentos < ActiveRecord::Migration
  def change
    create_table :horario_de_funcionamentos do |t|
      t.string :dia
      t.string :hora
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
