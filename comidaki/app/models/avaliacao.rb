# == Schema Information
#
# Table name: avaliacaos
#
#  id           :integer          not null, primary key
#  replica      :string
#  comentario   :string
#  nota         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  cliente_id   :integer
#  franquium_id :integer
#

class Avaliacao < ActiveRecord::Base
    belongs_to :cliente
    belongs_to :franquia
end
