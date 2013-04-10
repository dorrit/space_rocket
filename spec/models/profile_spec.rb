require 'spec_helper'

describe Profile do 

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