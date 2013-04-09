require 'spec_helper'

feature "new profile" do
  scenario "with valid info" do
    visit new_profile_path
    fill_in 'Bio', :with => 'I am an astronaut'
    fill_in "Hobby", :with => 'Soccer, spulunking'
    fill_in "Work", :with => 'Code'
    click_button "Create Profile"
    page.should have_content("Your profile was successfully created.")
  end


end
