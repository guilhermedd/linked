class User
  include Mongoid::Document
  include Mongoid::Timestamps

  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Additional fields
  field :name, type: String
  field :bio, type: String
  field :picture, type: String
  field :banner, type: String
  field :username, type: String  # Adicionando o campo :username

  has_many :link_items
end
