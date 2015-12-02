# == Schema Information
#
# Table name: administrador_de_restaurantes
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  franquium_id :integer
#  usuario_id   :integer
#

class AdministradorDeRestaurante < ActiveRecord::Base
#    belongs_to :usuario
    belongs_to :franquia
end
