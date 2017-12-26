class Pacient < ApplicationRecord
  has_many :consults, dependent: :delete_all
  has_many :medics, :through => :consults
end
