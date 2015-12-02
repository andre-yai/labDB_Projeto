# == Schema Information
#
# Table name: tipo_de_culinaria
#
#  id         :integer          not null, primary key
#  nome       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TipoDeCulinaria < ActiveRecord::Base
    has_and_belongs_to_many :franquia
    has_and_belongs_to_many :tipo_de_culinaria
end
