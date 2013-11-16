class RetailItem
  include Mongoid::Document
  field :price, type: Integer
  field :name, type: String
  field :description, type: String
  field :category, type: String
  field :url, type: String 
  field :number, type: String 
end
