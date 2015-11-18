# == Schema Information
#
# Table name: usuario
#
#  cpf   :integer          not null, primary key
#  senha :string(50)       not null
#  nome  :string(255)      not null
#  email :string(50)       not null
#

class Usuario < ActiveRecord::Base
    self.primary_key = 'cpf'
    self.table_name = "usuario"
end
