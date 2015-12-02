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

class Endereco < ActiveRecord::Base
end
