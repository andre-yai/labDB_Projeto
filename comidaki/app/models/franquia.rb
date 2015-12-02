# == Schema Information
#
# Table name: franquia
#
#  id                     :integer          not null, primary key
#  nome                   :string(50)       not null
#  faixa_preco            :integer          not null
#  tempo_entrega_estimado :integer          not null
#  custo_entrega_km       :float            default(0.0)
#  raio_entrega           :integer          not null
#  nota                   :integer          default(0)
#  cnpj                   :string(14)       not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  restaurante_id         :integer
#

class Franquia < ActiveRecord::Base
    has_many :avaliacao
    belongs_to :restaurante
    has_many :pratos
    has_one :endereco_franquia
    has_many :administrador_de_restaurante
    has_and_belongs_to_many :horario_de_funcionamento
    has_and_belongs_to_many :tipo_de_culinaria

    def restaurante
        return self.restaurante
    end
end
