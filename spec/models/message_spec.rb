require 'spec_helper'

describe Message do
  context 'validations' do
    it {should validate_presence_of :text}
    it {should validate_presence_of :subject}
    it {should validate_presence_of :public}
  end

  context 'mass assignment' do
    it {should allow_mass_assignment_of :text}
    it {should allow_mass_assignment_of :subject}
    it {should allow_mass_assignment_of :public}
  end

  context 'associations' do
    it {should belong_to :rocketeer}
  end
end