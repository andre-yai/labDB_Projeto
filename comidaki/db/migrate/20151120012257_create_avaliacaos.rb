class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.string :replica 
      t.string :comentario
      t.string :nota, null: false
    	
      t.timestamps null: false
    end
  end
end
