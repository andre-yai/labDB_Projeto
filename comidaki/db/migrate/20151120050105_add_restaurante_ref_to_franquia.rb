class AddRestauranteRefToFranquia < ActiveRecord::Migration
  def change
    add_reference :franquium, :restaurante, index: true, foreign_key: true
  end
end
