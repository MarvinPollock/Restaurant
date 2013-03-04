class Article < ActiveRecord::Base
  attr_accessible :articleID, :desrc, :name, :price
end
