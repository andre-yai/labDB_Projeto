class AddRestauranteRefToPrato < ActiveRecord::Migration
  def change
    add_reference :pratos, :restaurante, index: true, foreign_key: true
  end
end
