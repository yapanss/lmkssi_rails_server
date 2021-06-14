class Ecole
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nom_ecole, type: String
  field :titre_chef, type: String
  field :nom_chef, type: String
  field :annee_scolaire, type: String
  field :nombre_periode, type: Integer
  field :decoupage_annee, type: Hash
  field :date_fin, type: Date
end
