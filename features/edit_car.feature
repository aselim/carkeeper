Feature: Add car
 
  As an Admin
  I want to edit a used car

Background: cars have been added to database
  
  Given the following cars exist:
  | brand     | carmodel | year  |
  | Toyota    | Lexus    | 2000  |
  | Honda     | Civic    | 2005  |
  | Fiat      | 128      | 1995  |


Scenario: Edit a car

Given I am on the homepage
    When I follow "Sign-up"
    And I fill in "Login" with "aser"
    And I fill in "Password" with "passwordaser"
    And I fill in "Password confirmation" with "passwordaser"
    And I check "Admin"
    And I press "Create User"
    And I follow "Home"
    And I follow "Add A Car"
    And I fill in "car_brand" with "Toyota"
    And I fill in "car_carmodel" with "Cressida"
    And I fill in "car_year" with "2012"
    And I fill in "car_cc" with "2000"
    And I fill in "car_km" with "1000"
    And I fill in "car_price" with "250000"
    And I press "Create Car"
    And I follow "Edit"
    And I fill in "car_carmodel" with "corolla"
    And I press "Update Car"
    Then I should see "Car was successfully updated."
    
