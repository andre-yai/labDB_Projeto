# == Schema Information
#
# Table name: endereco_clientes
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cliente_id  :integer
#  endereco_id :integer
#

class EnderecoCliente < ActiveRecord::Base
    belongs_to :cliente, dependent: :destroy
    belongs_to :endereco
    has_many :pedidos
end
