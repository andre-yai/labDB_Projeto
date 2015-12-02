# == Schema Information
#
# Table name: avaliacaos
#
#  id           :integer          not null, primary key
#  replica      :string
#  comentario   :string
#  nota         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  cliente_id   :integer
#  franquium_id :integer
#

require 'test_helper'

class AvaliacaoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
