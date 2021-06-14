class Codeprof
  include Mongoid::Document
  include Mongoid::Timestamps
  field :matiere, type: String
  field :code, type: String

  belongs_to :professeur
end
