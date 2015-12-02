# == Schema Information
#
# Table name: restaurantes
#
#  id         :integer          not null, primary key
#  cnpj       :string           not null
#  nome       :string           not null
#  descricao  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
