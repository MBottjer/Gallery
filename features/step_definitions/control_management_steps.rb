When(/^I click on a photo and click edit$/) do
  attach_file 'product_photo', Rails.root.join('features/images/frontweb.jpg')
  fill_in "product_name", with: "a nice image"
  fill_in "product_description", with: "a beautiful piece of furniture"
  click_button "Create Product"
  click_link "frontweb"
end

Then(/^I should see the edited photo on the homepage$/) do
  pending # express the regexp above with the code you wish you had
end