class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.string :telefone
      t.string :cpf

      t.timestamps null: false
    end
  end
end
