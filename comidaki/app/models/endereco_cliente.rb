class EnderecoCliente < ActiveRecord::Base
    belongs_to :cliente dependent: :destroy
    belongs_to :endereco
    has_many :pedidos
end
