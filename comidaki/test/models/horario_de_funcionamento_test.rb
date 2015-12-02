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

require 'test_helper'

class HorarioDeFuncionamentoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
