class LinkItem
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url, type: String
  field :name, type: String
  field :icon, type: String
  field :user_id, type: BSON::ObjectId

  belongs_to :user
  validates :user, presence: true
end
