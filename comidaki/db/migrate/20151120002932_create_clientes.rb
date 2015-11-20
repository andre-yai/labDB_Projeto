class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
	t.references :usuario, null: false
      t.timestamps null: false
    end
  end
end
