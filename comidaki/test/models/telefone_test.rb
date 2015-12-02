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

require 'test_helper'

class TelefoneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
