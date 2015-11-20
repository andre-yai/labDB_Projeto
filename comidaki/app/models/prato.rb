class Prato < ActiveRecord::Base
    has_and_belongs_to_many :ingredientes
    has_and_belongs_to_many :pedidos
    belongs_to :franquia
end
