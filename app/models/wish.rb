class Wish
  include Mongoid::Document
  belongs_to :wish_list
  belongs_to :retail_item

end
