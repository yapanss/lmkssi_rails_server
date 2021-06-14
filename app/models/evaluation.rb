class Evaluation
  include Mongoid::Document
  include Mongoid::Timestamps
  field :annee_scolaire, type: String
  field :periode, type: String
  field :matiere, type: String
  field :coefficient, type: Integer
  field :moyenne, type: Float

  belongs_to :eleve
  belongs_to :professeur, class_name: 'Personnel'
end
