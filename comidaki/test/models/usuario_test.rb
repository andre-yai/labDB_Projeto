# == Schema Information
#
# Table name: usuarios
#
#  id         :integer          not null, primary key
#  cpf        :string           not null
#  nome       :string           not null
#  email      :string           not null
#  senha      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
