class Franquia < ActiveRecord::Base
    has_many :avaliacao
    belongs_to :restaurante
    has_many :pratos
    has_one :endereco_franquia
    has_many :administrador_de_restaurante
    has_and_belongs_to_many :horario_de_funcionamento
    has_and_belongs_to_many :tipo_de_culinaria
end
