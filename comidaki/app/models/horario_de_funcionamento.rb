class HorarioDeFuncionamento < ActiveRecord::Base
    has_and_belongs_to_many :franquia
end
