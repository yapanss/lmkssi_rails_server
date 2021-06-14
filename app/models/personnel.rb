class Personnel
  include Mongoid::Document
  include Mongoid::Timestamps
  field :matricule, type: String
  field :nom, type: String
  field :prenoms, type: String
  field :date_naissance, type: Date
  field :lieu_naissance, type: Date
  field :contact, type: String
  field :domicile, type: String
  field :situation_matrimoniale, type: String
  field :genre, type: String
  
  has_many :enseignements
  has_many :evaluations
  #has_many :encadrements
  #has_and_belongs_to_many :conseilenseignements
end
