# == Schema Information
#
# Table name: usuario
#
#  cpf   :integer          not null, primary key
#  senha :string(50)       not null
#  nome  :string(255)      not null
#  email :string(50)       not null
#

require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
