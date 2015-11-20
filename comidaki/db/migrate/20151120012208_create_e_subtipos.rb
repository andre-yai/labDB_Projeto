class CreateESubtipos < ActiveRecord::Migration
  def change
    create_table :e_subtipos do |t|
      t.string :nome
      t.string :nome_subtipo
      t.integer :id_subtipo

      t.timestamps null: false
    end
  end
end
