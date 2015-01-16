class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password_digest, type: String

  has_secure_password

  embeds_many :beer

  accepts_nested_attributes_for :beer

  validates :email, uniqueness: true
  validates :password, confirmation: true
end
