require 'spec_helper'

feature "new profile" do
  scenario "with valid info" do
    sign_up_helper
    contact_details_helper
    fill_in 'Bio', :with => 'I am an astronaut'
    fill_in "Hobby", :with => 'Soccer, spulunking'
    fill_in "Work", :with => 'Code'
    click_button "Create Profile"
    current_path.should == '/home'
  end


end
