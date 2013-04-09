require 'spec_helper'

describe ContactDetail do 

  context 'accessibility' do
    it {should allow_mass_assignment_of :first_name}
    it {should allow_mass_assignment_of :last_name}
    it {should allow_mass_assignment_of :phone}
    it {should allow_mass_assignment_of :email}
    it {should allow_mass_assignment_of :apartment_number}
  end

  context 'validation' do
    it {should validate_presence_of :first_name}
    it {should validate_presence_of :last_name}
    it {should validate_presence_of :phone}
    it {should validate_presence_of :email}
    it {should validate_presence_of :apartment_number}
    it {should allow_value('mfpiccolo@gmail.com').for :email}
    it {should_not allow_value('lfskfj').for :email}
  end

end