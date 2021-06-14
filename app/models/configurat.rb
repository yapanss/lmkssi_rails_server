class Configurat
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nom_ecole, type: String
  field :annee_scolaire, type: String
  field :date_fin, type: Date
  field :nombre_periode, type: Integer
  field :periodes, type: Hash
end
