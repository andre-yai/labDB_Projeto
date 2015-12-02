# == Schema Information
#
# Table name: ingredientes
#
#  id         :integer          not null, primary key
#  nome       :string           not null
#  tipo       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingrediente < ActiveRecord::Base
    has_and_belongs_to_many :pratos
end
