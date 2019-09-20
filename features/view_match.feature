Feature: Proper access to CRUD actioons
  
  As a admin
  So that I can make sure users can only see certain functions
  Users should not be able to create, edit, or delete matches

Scenario: As a user I do not want to be able to create, update, or destroy a match
  Given I am on the home page
  When I click on the "Matches" link
  Then I should be on the "Matches" page
  Then I should not see the "Edit" link
  And I should not see the "Delete" link
  And I should not see the "New Match" link