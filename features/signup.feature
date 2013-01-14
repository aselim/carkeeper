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


  Scenario: Sad path

    Given I am on the user homepage
    When I follow "Sign-up"
    And I press "Create User"
    Then I should see "5 errors prohibited this car from being saved:"

  Scenario: Sign out after signup

    Given I am on the user homepage
    When I follow "Sign-up"
    And I fill in "Login" with "aser"
    And I fill in "Password" with "passwordaser"
    And I fill in "Password confirmation" with "passwordaser"
    And I press "Create User"
    And I follow "Sign-out"
    Then I should be on the homepage


