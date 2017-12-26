class Medic < ApplicationRecord
  has_many :consults, dependent: :delete_all
  has_many :pacients, :through => :consults
  def self.sectii
    ["Anestezie si terapie intensiva", "Bloc operator", "Cardiologie", "Centrul de Hemodializa", "Chirurgie generala",
    "Chirurgie plastica", "Compartiment Primire urgente (CPU)", "Endocrinologie", "Endoscopie digestiva", "Evaluare si statistica",
    "Farmacie", "Gastroenterologie", "Geriatrie – Gerontologie", "Ginecologie", "Medicina interna", "Nefrologie", "Neurologie",
    "Oftalmologie", "ORL", "Prevenire si control infectii nosocomiale", "Psihiatrie", "Sterilizare", "Unitate transfuzii sangvine",
    "Urologie", "Urologie copii"]
  end
end
