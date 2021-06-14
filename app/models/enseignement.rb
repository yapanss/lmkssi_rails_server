class Enseignement
  include Mongoid::Document
  include Mongoid::Timestamps
  field :matiere, type: String
  field :coefficient, type: Integer
  field :horaires, type: Hash

  belongs_to :classe
  belongs_to :professeur, class_name: 'Personnel'
  #has_many :evaluations
  #has_many :evaluations
end
