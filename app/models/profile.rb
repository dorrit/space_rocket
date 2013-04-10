class Profile < ActiveRecord::Base
  attr_accessible :bio, :hobby, :work, :rocketeer_id

  belongs_to :rocketeer

end