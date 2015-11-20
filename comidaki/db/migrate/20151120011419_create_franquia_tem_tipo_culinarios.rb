class CreateFranquiaTemTipoCulinarios < ActiveRecord::Migration
  def change
    create_table :franquia_tem_tipo_culinarios do |t|
      t.string :cnpj
      t.string :nome

      t.timestamps null: false
    end
  end
end
