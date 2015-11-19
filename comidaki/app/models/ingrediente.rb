# == Schema Information
#
# Table name: ingrediente
#
#  nome :string(50)       not null, primary key
#  tipo :string(50)
#

class Ingrediente < ActiveRecord::Base
    self.table_name = 'ingrediente'
    self.primary_key = 'nome'
end
