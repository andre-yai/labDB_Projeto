class CreateJoinTablePratosPedidos < ActiveRecord::Migration
  def change
    create_join_table :pratos, :pedidos, table_name: :pratos_pedido do |t|
	t.float :quantidade
#       t.index [:prato_id, :pedido_id]
 #      t.index [:pedido_id, :prato_id]
    end
  end
end
