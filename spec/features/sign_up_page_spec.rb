require 'spec_helper'

feature 'sign up' do
  scenario 'with valid info' do
    visit root_path
    click_button 'Sign Up'
  end
end