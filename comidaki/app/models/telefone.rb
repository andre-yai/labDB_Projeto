# == Schema Information
#
# Table name: telefones
#
#  id         :integer          not null, primary key
#  telefone   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  usuario_id :integer
#

class Telefone < ActiveRecord::Base
    belongs_to :usuario
end
