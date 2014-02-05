Feature: Admin Sign In and Sign Out
  As an admin that wants to edit content
  In order to so 
  I need to sign in 

  Scenario: Signing In
    Given that I am on the sign in page
    When I enter my details and click sign in
    Then I should be signed in

  @sign_in
  Scenario: Signing Out
    Given that I am on the admin page
    When I press sign out 
    Then I should be signed out