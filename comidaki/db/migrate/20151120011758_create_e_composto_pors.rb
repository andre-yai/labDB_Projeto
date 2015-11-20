class CreateECompostoPors < ActiveRecord::Migration
  def change
    create_table :e_composto_pors do |t|
      t.integer :id_prato
      t.integer :id_ingrediente

      t.timestamps null: false
    end
  end
end
