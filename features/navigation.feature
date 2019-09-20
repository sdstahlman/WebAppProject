Feature: Add a new bet
  
  As a user
  So that site navigation is hassle free
  I want to be able to navigate to any part of the website from any page

Scenario: As a user I want to be able to navigate to any part of the website from any page
  Given I am on the home page
  When I click on the "Matches" link
  Then I should be on the "Matches" page
  When I click on the "Home" link
  Then I should be on the "Home" page