class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.string :telefone, null: false
	t.references :cliente, null: false

      t.timestamps null: false
    end
  end
end
