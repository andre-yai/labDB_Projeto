class CreateEnderecoFranquia < ActiveRecord::Migration
  def change
    create_table :endereco_franquia do |t|

      t.timestamps null: false
    end
  end
end
