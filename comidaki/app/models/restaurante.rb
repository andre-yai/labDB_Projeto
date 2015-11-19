# == Schema Information
#
# Table name: restaurante
#
#  cnpj :integer          not null, primary key
#  nome :string(50)       not null
#

class Restaurante < ActiveRecord::Base
  self.table_name = 'restaurante'
  self.primary_key = 'cnpj'
end
