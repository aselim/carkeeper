Feature: Signup
  In order to create a new user
  So that I can utilize the website

  Scenario: Successful signup

    Given I am on the user homepage
    When I follow "Sign-up"
    And I fill in "Login" with "aser"
    And I fill in "Password" with "passwordaser"
    And I fill in "Password confirmation" with "passwordaser"
    And I press "Create User"
    Then I should see "Car was successfully created"

