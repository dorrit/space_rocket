require 'spec_helper'

feature "new message" do
  scenario "with valid info" do
    sign_up
    click_link "Message"
    page.should have_content("Your profile was successfully created.")
  end
end