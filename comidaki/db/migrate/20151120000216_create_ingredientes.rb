class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nome
      t.string :tipo

      t.timestamps null: false
    end
  end
end
