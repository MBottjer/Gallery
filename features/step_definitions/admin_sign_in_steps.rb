# Signing In

Given(/^that I am on the sign in page$/) do
  visit '/signin'
end

When(/^I enter my details and click sign in$/) do
  FactoryGirl.create(:user)
  fill_in 'Email', with: 'Chanelle'
  fill_in 'Password', with: 'devesh1234'
  click_button 'Sign in'
end

Then(/^I should be signed in$/) do
  expect(page).to have_content "Signed in successfully"
end

# Signing Out

Given(/^that I am on the admin page$/) do
  expect(page).to have_content "Sign out"
end

When(/^I press sign out$/) do
  click_link "Sign out"
end

Then(/^I should be signed out$/) do
  expect(page).to have_content "You have successfully signed out"
end