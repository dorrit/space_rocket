class Rocketeer < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin
  has_one :profile
  has_one :contact_detail
  has_many :messages


  def full_name
    "#{self.try(:contact_detail).try(:first_name)} #{self.try(:contact_detail).try(:last_name)}"
  end

end
