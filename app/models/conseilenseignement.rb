class Conseilenseignement
  include Mongoid::Document
  include Mongoid::Timestamps
  field :matiere, type: String

  has_and_belongs_to_many :professeurs
end
