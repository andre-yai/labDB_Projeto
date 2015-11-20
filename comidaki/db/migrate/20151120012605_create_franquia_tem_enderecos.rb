class CreateFranquiaTemEnderecos < ActiveRecord::Migration
  def change
    create_table :franquia_tem_enderecos do |t|

      t.timestamps null: false
    end
  end
end
