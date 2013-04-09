class Profile < ActiveRecord::Base
  attr_accessible :bio, :hobby, :work

  belongs_to :rocketeer

end