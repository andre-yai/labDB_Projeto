class AddRestauranteRefToFranquia < ActiveRecord::Migration
  def change
    add_reference :franquia, :restaurante, index: true, foreign_key: true
  end
end
