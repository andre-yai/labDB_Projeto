# == Schema Information
#
# Table name: clientes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  usuario_id :integer
#

class Cliente < ActiveRecord::Base
#    belongs_to :usuario
    has_many :endereco_clientes
    has_many :avaliacaos
    has_many :pedidos
end
