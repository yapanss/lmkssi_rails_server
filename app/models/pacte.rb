class Pacte
  include Mongoid::Document
  include Mongoid::Timestamps
  field :role, type: String
  field :cadre, type: String

  belongs_to :resource, :polymorphic => true
end
