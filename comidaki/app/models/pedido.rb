class Pedido < ActiveRecord::Base
    belongs_to :restaurante
    belongs_to :cliente
    belongs_to :endereco_cliente
    has_and_belongs_to_many :pratos
end
