class CreateJoinTableSubtipoTipoCulinaria < ActiveRecord::Migration
  def change
    create_join_table :tipo_de_culinaria, :tipo_de_culinaria, table_name: :subtipo_culinaria do |t|
   #    t.index [:tipo_id, :tipo_de_culinarium_id] 
    #   t.index [:subtipo_id, :tipo_de_culinarium_id] 
    end
  end
end
