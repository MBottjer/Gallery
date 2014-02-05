Before ('@sign_in') do 
  FactoryGirl.create(:user)
  visit '/signin'
  fill_in 'Email', with: 'chanellesa@hotmail.co.uk'
  fill_in 'Password', with: 'devesh1234'
  click_button 'Sign in'
end