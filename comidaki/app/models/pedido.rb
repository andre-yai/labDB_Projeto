# == Schema Information
#
# Table name: pedidos
#
#  id                  :integer          not null, primary key
#  status              :string           default("em processamento"), not null
#  data                :datetime         not null
#  valor               :float            not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  cliente_id          :integer
#  endereco_cliente_id :integer
#  franquium_id        :integer
#

class Pedido < ActiveRecord::Base
    belongs_to :restaurante
    belongs_to :cliente
    belongs_to :endereco_cliente
    has_and_belongs_to_many :pratos
end
