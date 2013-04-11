class Profile < ActiveRecord::Base
  attr_accessible :bio, :hobby, :work, :avatar, :rocketeer_id

  has_attached_file :avatar, :styles => {:small => "150x150>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.jpg", :processors => [:thumbnail]

  belongs_to :rocketeer

  validates_attachment_size :avatar, :less_than => 2.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end