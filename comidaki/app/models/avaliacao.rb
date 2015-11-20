class Avaliacao < ActiveRecord::Base
    belongs_to :cliente
    belongs_to :franquia
end
