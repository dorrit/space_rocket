require 'spec_helper'

feature "new message" do
  scenario "with valid info" do
    sign_up_helper
    click_link 'Account'
    click_link "Add Message"
    fill_in "Subject", with: 'jlsfkj'
    fill_in "Text", with: 'lskfj'
    check('message[public]')
    click_button 'Create Message'
    page.should have_content("Your contact details were successfully added.")
  end
end