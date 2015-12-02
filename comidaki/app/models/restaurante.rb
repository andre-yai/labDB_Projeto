# == Schema Information
#
# Table name: restaurantes
#
#  id         :integer          not null, primary key
#  cnpj       :string           not null
#  nome       :string           not null
#  descricao  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurante < ActiveRecord::Base
    has_many :franquia
    
    def franquias
        return self.franquia
    end
end
