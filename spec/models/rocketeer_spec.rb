require 'spec_helper'

describe Rocketeer do
  context 'associations' do
    it {should have_one :contact_detail}
    it {should have_one :profile}
  end


  context '#full_name' do
    it 'returns the full name of the rocketeer' do
      rocketeer = FactoryGirl.create(:rocketeer_with_contact_detail)
      rocketeer.full_name.should eq "Sammy McTougherson"
    end
  end
end
