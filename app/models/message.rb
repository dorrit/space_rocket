class Message < ActiveRecord::Base
  validates :subject, :text, :public,  :presence => true
  attr_accessible :subject, :text, :public
  belongs_to :rocketeer
  before_save :default_values
  def default_values
    self.status ||= 'P'
  end
end

