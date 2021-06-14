class Essai
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nom, type: String
  field :prenoms, type: String
  field :parents, type: Hash
end
