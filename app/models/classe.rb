class Classe
  include Mongoid::Document
  include Mongoid::Timestamps
  field :annee_scolaire, type: String
  field :niveau, type: String
  field :niveau_suivant, type: String
  field :nom, type: String
  field :salle, type: String
  field :lv2, type: String
  field :art, type: String

  has_and_belongs_to_many :membres, class_name: 'Eleve', order: {nom: 1}, inverse_of: :classe_frequentees
  has_many :enseignements
  has_one :chef, class_name: 'Eleve'
  has_one :souschef, class_name: 'Eleve'
  #has_many :encadrements
end
