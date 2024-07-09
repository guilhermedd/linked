class LinkItem
  include Mongoid::Document
  include Mongoid::Timestamps
  field :url, type: String
  field :name, type: String
  field :icon, type: Url
end
