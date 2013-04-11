class Profile < ActiveRecord::Base
  attr_accessible :bio, :hobby, :work, :avatar, :rocketeer_id

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :rocketeer

end