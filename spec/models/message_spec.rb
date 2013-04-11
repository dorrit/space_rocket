require 'spec_helper'

describe Message do
  context 'validations' do
    it {should validate_presence_of :text}
    it {should validate_presence_of :subject}
    it {should validate_presence_of :recipient_id}
    it {should validate_presence_of :sender_id}
  end

  context 'mass assignment' do
    it {should allow_mass_assignment_of :text}
    it {should allow_mass_assignment_of :subject}
    it {should allow_mass_assignment_of :public}
    it {should allow_mass_assignment_of :recipient_id}
    it {should allow_mass_assignment_of :sender_id}
  end

  context 'associations' do
    it {should belong_to :sender}
    it {should belong_to :recipient}
  end

  context 'callbacks' do
    it 'normalizes Message with public false value' do
      FactoryGirl.create(:message).public.should be_false
    end
    it 'sends an email and checks for the request before saving' #do
    #   message_to_email = FactoryGirl.create(:message)
    #   stub = stub_request(:post, "https://api:#{ENV['API_KEY']}@api.mailgun.net/v2/spacerocket.mailgun.org/messages")
    #   stub.should have_been_requested
    # end
  end

end