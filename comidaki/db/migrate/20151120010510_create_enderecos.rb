class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :logradouro, null: false
      t.string :cep, null: false
      t.integer :numero, null: false
      t.string :complemento
      t.string :cidade, null: false
      t.string :estado, null: false
      t.integer :latitude 
      t.integer :longitude

      t.timestamps null: false
    end
  end
end
