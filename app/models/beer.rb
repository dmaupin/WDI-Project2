class Beer
  include Mongoid::Document
  field :name, type: String
  field :brewery, type: String
  field :style, type: String
  field :price, type: Float
  field :taste, type: String
  field :appearance, type: String
  field :rating, type: Integer
  field :ABV, type: Float

  # belongs_to :user

  validates :name, presence: true

end
