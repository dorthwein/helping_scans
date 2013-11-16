class WishList
  include Mongoid::Document
  belongs_to :user
  has_many :wishes
end