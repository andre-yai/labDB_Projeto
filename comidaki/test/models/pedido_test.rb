# == Schema Information
#
# Table name: pedidos
#
#  id                  :integer          not null, primary key
#  status              :string           default("em processamento"), not null
#  data                :datetime         not null
#  valor               :float            not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  cliente_id          :integer
#  endereco_cliente_id :integer
#  franquium_id        :integer
#

require 'test_helper'

class PedidoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
