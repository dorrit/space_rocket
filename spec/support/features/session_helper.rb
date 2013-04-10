def sign_up_helper
  visit root_path
  click_link 'Sign Up'
  fill_in 'Email', with: 'email@email.com'
  fill_in 'Password', with: 'password123'
  fill_in 'Password confirmation', with: 'password123'
  click_button 'Sign up'
end
