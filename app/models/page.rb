class Page < ActiveRecord::Base
  attr_accessible :title, :content, :parent_id, :story_id
  has_many :choices
  belongs_to :story
end
