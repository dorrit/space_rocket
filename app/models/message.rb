class Message < ActiveRecord::Base
  validates :subject, :text, :presence => true
  attr_accessible :subject, :text, :public
  belongs_to :rocketeer
  after_initialize :default_values

  def default_values
    self.public = false
  end
end

