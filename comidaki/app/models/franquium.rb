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

class Franquium < ActiveRecord::Base
end
