class Tact
  include Mongoid::Document
  include Mongoid::Timestamps
  field :annee, type: String
  field :periode, type: String
  field :matiere, type: String
  field :coefficient, type: Integer
  field :moyenne, type: Float

  #embedded_in :pacte
end
