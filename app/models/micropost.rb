class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :team_mate
  validates :content, :length => { :maximum => 100}
end	