class Beer
  include Mongoid::Document
  field :name, type: String
  field :brewery, type: String
  field :style, type: String
  field :price, type: Float
end
