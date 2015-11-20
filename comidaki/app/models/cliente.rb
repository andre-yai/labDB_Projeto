class Cliente < ActiveRecord::Base
    belongs_to :usuario
    has_many :endereco_clientes
    has_many :avaliacaos
    has_many :pedidos
end
