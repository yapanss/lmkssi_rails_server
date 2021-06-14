class Encadrement
  include Mongoid::Document
  include Mongoid::Timestamps
  field :titre, type: String

  #belongs_to :classe
  belongs_to :personnel
end
