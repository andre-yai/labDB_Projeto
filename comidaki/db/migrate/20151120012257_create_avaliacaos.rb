class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.string :replica
      t.timestamp :data
      t.string :comentario
      t.string :nota
      t.string :cpf
      t.string :cnpf

      t.timestamps null: false
    end
  end
end
