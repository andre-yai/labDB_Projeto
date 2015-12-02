# == Schema Information
#
# Table name: endereco_clientes
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cliente_id  :integer
#  endereco_id :integer
#

require 'test_helper'

class EnderecoClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
