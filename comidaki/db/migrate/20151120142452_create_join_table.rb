class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :pratos, :ingredientes, table_name: :prato_e_composto_por do |t|
	t.float :quantidade 
   #    t.index [:prato_id, :ingrediente_id]
    #   t.index [:ingrediente_id, :prato_id]
    end
  end
end
