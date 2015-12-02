# == Schema Information
#
# Table name: enderecos
#
#  id          :integer          not null, primary key
#  logradouro  :string           not null
#  cep         :string           not null
#  numero      :integer          not null
#  complemento :string
#  cidade      :string           not null
#  estado      :string           not null
#  latitude    :integer
#  longitude   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class EnderecoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
