# == Schema Information
#
# Table name: endereco_franquia
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  franquium_id :integer
#  endereco_id  :integer
#

class EnderecoFranquia < ActiveRecord::Base
    belongs_to :franquia
end
