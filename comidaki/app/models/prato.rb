# == Schema Information
#
# Table name: pratos
#
#  id             :integer          not null, primary key
#  preco          :float            not null
#  Valor_calorico :integer
#  nome           :string           not null
#  descricao      :string
#  imagem         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  restaurante_id :integer
#

class Prato < ActiveRecord::Base
    has_and_belongs_to_many :ingredientes
    has_and_belongs_to_many :pedidos
    belongs_to :franquia
end
