# == Schema Information
#
# Table name: pratos
#
#  id             :integer          not null, primary key
#  preco          :float            not null
#  Valor_calorico :integer
#  nome           :string           not null
#  descricao      :string
#  imagem         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  restaurante_id :integer
#

require 'test_helper'

class PratoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
