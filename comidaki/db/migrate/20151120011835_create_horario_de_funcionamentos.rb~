class CreateHorarioDeFuncionamentos < ActiveRecord::Migration
  def change
    create_table :horario_de_funcionamentos do |t|
      t.string :dia, null: false
      t.string :hora, null: false
	t.references :franquia, null: false
      t.timestamps null: false
    end
  end
end
