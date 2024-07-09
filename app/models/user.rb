class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :bio, type: String
  field :picture, type: String
  field :banner, type: String
end
