class CreateJoinTableRestauranteTipoCulinaria < ActiveRecord::Migration
  def change
    create_join_table :restaurantes, :tipo_de_culinaria table_name: :restaurante_tem_tipo_culinaria do |t|
       t.index [:restaurante_id, :tipo_de_culinarium_id]
       t.index [:tipo_de_culinarium_id, :restaurante_id]
    end
  end
end
