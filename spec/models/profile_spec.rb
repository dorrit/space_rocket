require 'spec_helper'

describe Profile do 

  context 'images' do
    it { should have_attached_file(:avatar) }
    it { should validate_attachment_content_type(:avatar).allowing('image/jpeg', 'image/png', 'image/gif').rejecting('text/plain', 'text/xml')}
    it { should validate_attachment_size(:avatar).less_than(2.megabytes) }
  end

  context 'accessibility' do
    it {should allow_mass_assignment_of :bio}
    it {should allow_mass_assignment_of :hobby}
    it {should allow_mass_assignment_of :work}
    it {should allow_mass_assignment_of :rocketeer_id}

  end

  context 'associations' do
    it {should belong_to :rocketeer}
  end
end