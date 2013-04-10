require 'spec_helper'

feature 'sign up' do
  scenario 'with valid info' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'Email', with: 'email@email.com'
    fill_in 'Password', with: 'password123'
    fill_in 'Password confirmation', with: 'password123'
    click_button 'Sign up'
    page.should have_content("Welcome! You have signed up successfully.")
  end
end