class Rocketeer < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_one :profile
  has_one :contact_detail
  has_many :received_messages, :class_name => "Message", :foreign_key => "recipient_id"
  has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id"


  def full_name
    "#{self.try(:contact_detail).try(:first_name)} #{self.try(:contact_detail).try(:last_name)}"
  end

end
