require 'spec_helper'

feature "new message" do
  scenario "with valid info" do
    sign_up_helper
    contact_details_helper
    click_link 'Account'
    click_link "Add Message"
    select 'Curious George', from: 'message_recipient_id'
    fill_in "Subject", with: 'jlsfkj'
    fill_in "Text", with: 'lskfj'
    check('message[public]')
    click_button 'Create Message'
    page.should have_content("Your message was launched!")
  end
end