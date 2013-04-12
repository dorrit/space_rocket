class Profile < ActiveRecord::Base
  attr_accessible :bio, :hobby, :work, :avatar, :rocketeer_id

  has_attached_file :avatar, :styles => {:small => "150x150>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.jpg", :processors => [:thumbnail]

  belongs_to :rocketeer

  validates_attachment_size :avatar, :less_than => 2.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
    #, :s3_credentials => {:access_key_id => AWS_ACCESS_KEY_ID,:secret_access_key => AWS_SECRET_ACCESS_KEY}, :bucket => AWS_BUCKET} 
end