class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nome, null: false, unique: true
      t.string :tipo
      t.timestamps null: false
    end
  end
end
