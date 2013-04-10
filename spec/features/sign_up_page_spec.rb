require 'spec_helper'

feature 'sign up' do
  scenario 'with valid info' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'Email', :with => 'dorrit@yahoo.com'
    fill_in 'Password', :with => 'Iamanastronaut'
    fill_in 'Password confirmation', :with => 'Iamanastronaut'
    click_button "Sign up"
    page.should have_content("Welcome! You have signed up successfully.")
  end
end