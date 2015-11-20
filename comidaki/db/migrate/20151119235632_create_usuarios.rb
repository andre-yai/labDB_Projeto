class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :cpf, null: false, unique: false
      t.string :nome, null: false
      t.string :email, null: false, unique: false
      t.string :senha, null: false, unique: false

      t.timestamps null: false
    end
  end
end
