class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :cep
      t.integer :numero
      t.string :complemento
      t.string :cidade
      t.string :estado
      t.integer :latitude
      t.integer :longitude

      t.timestamps null: false
    end
  end
end
