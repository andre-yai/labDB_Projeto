class Usuario < ActiveRecord::Base
 self.primary_key = 'cpf'
 self.table_name = 'usuario'
end
