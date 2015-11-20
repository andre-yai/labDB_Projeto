class CreatePedidoTemPratos < ActiveRecord::Migration
  def change
    create_table :pedido_tem_pratos do |t|
      t.integer :quantidade
      t.integer :id_pedido
      t.integer :id_prato

      t.timestamps null: false
    end
  end
end
