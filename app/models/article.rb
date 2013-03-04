class Article < ActiveRecord::Base
  attr_accessible :articleID, :desrc, :name, :price
  has_many :orders
end
