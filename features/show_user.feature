Feature: Show users
 
  As an Adminstrator who wants to track users
  I want to see all users

Background:
    Given the following Dusers exist:
      | login    | password       |  admin  |
      | samir    | passwordsamir  |  false  |
      | ahmed    | passwordahmed  |  false  |


Scenario: Show users

Given I am on the homepage
    When I follow "Sign-up"
    And I fill in "Login" with "wael"
    And I fill in "Password" with "passwordwael"
    And I fill in "Password confirmation" with "passwordwael"
    And I check "Admin"
    And I press "Create User"
    And I follow "Administrator"
    Then I should see "samir" before "ahmed"
    And I should see "ahmed" before "wael"
    
