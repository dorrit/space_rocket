require 'spec_helper'

feature "new contact_details" do
  scenario "with valid info" do
    sign_up_helper
    fill_in 'First name', :with => 'I am an astronaut'
    fill_in "Last name", :with => 'Soccer, spulunking'
    fill_in "Phone", :with => 'Code'
    fill_in "Email", :with => 'mfpiccolo@gmlasj.com'
    fill_in "Apartment number", :with => 'Code'
    click_button "Create Contact detail"
    page.should have_content("Your contact details were successfully added.")
  end


end
