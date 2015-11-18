class TipoCulinarium < ActiveRecord::Base
    self.table_name = 'tipo_de_culinaria'
    self.primary_key = 'nome'
end
