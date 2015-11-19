# == Schema Information
#
# Table name: tipo_de_culinaria
#
#  nome :integer          not null, primary key
#

class TipoCulinarium < ActiveRecord::Base
    self.table_name = 'tipo_de_culinaria'
    self.primary_key = 'nome'
end
