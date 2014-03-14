Feature: Editing and Adding Photos
  As an admin that wants to control the content of the gallery
  In order to do so 
  I need to be able to edit or delete photos

  @sign_in
  Scenario: Editing Photos
    Given that I am on the admin page
    When I click on a photo and click edit
    Then I should see the edited photo on the homepage
