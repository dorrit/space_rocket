class Message < ActiveRecord::Base
  validates :subject, :text, :presence => true
  attr_accessible :subject, :text, :public
  belongs_to :rocketeer

end

