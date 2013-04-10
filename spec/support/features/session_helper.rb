def sign_up_helper
  visit root_path
  click_link 'Sign Up'
  fill_in 'Email', with: 'email@email.com'
  fill_in 'Password', with: 'password123'
  fill_in 'Password confirmation', with: 'password123'
  click_button 'Sign up'
end

def sign_in_helper 
  sign_up_helper
  visit root_path
  click_link "Log In"
  fill_in 'Email', with: 'email@email.com'
  fill_in 'Password', with: 'secret'
  click_button 'Sign in'
end