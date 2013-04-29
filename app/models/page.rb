class Page < ActiveRecord::Base
  attr_accessible :content, :parent_id
  has_many :choices
end
