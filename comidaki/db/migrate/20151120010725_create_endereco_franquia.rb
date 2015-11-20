class CreateEnderecoFranquia < ActiveRecord::Migration
  def change
    create_table :endereco_franquium do |t|
     
      t.timestamps null: false
    end
  end
end
