def sign_up_helper
  visit root_path
  click_link 'Sign Up'
  fill_in 'Email', with: 'email@email.com'
  fill_in 'Password', with: 'password123'
  fill_in 'Password confirmation', with: 'password123'
  click_button 'Sign up'
end

def contact_details_helper
  fill_in 'First name', with: 'Curious'
  fill_in 'Last name', with: 'George'
  fill_in 'Phone', with: '510-495-5432'
  fill_in 'Email', with: 'george@monkey.com'
  fill_in 'Apartment number', with: 'banana1'
  click_button 'Create Contact detail'
end
