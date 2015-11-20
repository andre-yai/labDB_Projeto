class Ingrediente < ActiveRecord::Base
    has_and_belongs_to_many :pratos
end
