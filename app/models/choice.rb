class Choice < ActiveRecord::Base
  attr_accessible :title, :child_id, :page_id
  belongs_to :page
end
