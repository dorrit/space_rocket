class ContactDetail < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone, :email, :apartment_number, :rocketeer_id

  validates :first_name, :last_name, :phone, :email, :apartment_number, :rocketeer_id, :presence => true
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  
  belongs_to :rocketeer
end