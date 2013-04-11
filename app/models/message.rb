class Message < ActiveRecord::Base
  include MailWrap

  validates :subject, :text, :recipient_id, :sender_id, :presence => true
  
  attr_accessible :subject, :text, :public, :recipient_id, :sender_id
  
  belongs_to :sender, :class_name => "Rocketeer", :foreign_key => "sender_id"
  belongs_to :recipient, :class_name => "Rocketeer", :foreign_key => "recipient_id"

  after_save :send_email 

  def send_email
    #binding.pry
    parameters = {
      :from => self.sender.email,
      :to => self.recipient.email,
      :subject => self.subject,
      :text => self.text
        }
    response = conn.post("spacerocket.mailgun.org/messages", parameters)
    response.success?
  end

end

