class TipoDeCulinaria < ActiveRecord::Base
    has_and_belongs_to_many :franquia
    has_and_belongs_to_many :tipo_de_culinaria
end
