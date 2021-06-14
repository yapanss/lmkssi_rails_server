class Eleve
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nom, type: String
  field :prenoms, type: String
  field :matricule, type: String
  field :date_naissance, type: Date
  field :lieu_naissance, type: String
  field :contact, type: String
  field :pere, type: Hash
  field :mere, type: Hash
  field :tuteur, type: Hash
  field :genre, type: String
  field :domicile, type: String
  field :niveau, type: String
  field :redoublant, type: String

  has_and_belongs_to_many :classe_frequentees, class_name: 'Classe', inverse_of: :membres
  # has_many :poste_chefs, class_name: 'Classe', inverse_of: :chef
  # has_many :poste_souschefs, class_name: 'Classe', inverse_of: :souschef
  has_many :evaluations
end

# has_and_belongs_to_many :eleves, order: {nom: 1}, inverse_of: :eleves
#   has_many :enseignements
#   has_one :chef, class_name: 'Eleve'
#   has_one :chef, class_name: 'Eleve'
  # belongs_to :chef, class_name: 'Eleve', inverse_of: :poste_chefs
  # belongs_to :souschef, class_name: 'Eleve', inverse_of: :poste_souschefs