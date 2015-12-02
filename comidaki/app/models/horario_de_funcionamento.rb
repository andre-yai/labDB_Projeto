# == Schema Information
#
# Table name: horario_de_funcionamentos
#
#  id           :integer          not null, primary key
#  dia          :string           not null
#  hora         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  franquium_id :integer
#

class HorarioDeFuncionamento < ActiveRecord::Base
    has_and_belongs_to_many :franquia
end
