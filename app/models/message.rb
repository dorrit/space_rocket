class Message < ActiveRecord::Base
  validates :subject, :text, :public,  :presence => true
  attr_accessible :subject, :text, :public
  belongs_to :rocketeer
end

