class TeamMate < ActiveRecord::Base
  attr_accessible :email, :name, :teamname
  has_many :microposts
end
