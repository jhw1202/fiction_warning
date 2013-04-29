class Story < ActiveRecord::Base
  attr_accessible :title, :page_count
  has_many :pages
end
