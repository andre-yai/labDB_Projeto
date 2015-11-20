class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :status, null: false, default: 'em processamento'
      t.timestamp :data, null: false
      t.float :valor, null: false
	t.references :restaurante
	t.references :cliente
	t.references :endereco_cliente
      t.timestamps null: false
    end
  end
end
