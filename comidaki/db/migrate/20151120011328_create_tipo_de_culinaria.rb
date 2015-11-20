class CreateTipoDeCulinaria < ActiveRecord::Migration
  def change
    create_table :tipo_de_culinaria do |t|
      t.string :nome, null: false, unique: true

      t.timestamps null: false
    end
  end
end
