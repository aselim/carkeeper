Feature: Search
  In order to search for a certain car
  So that I can find what I want

Background: cars have been added to database
  
  Given the following cars exist:
  | brand     | carmodel | year  |
  | Toyota    | Lexus    | 2000  |
  | Toyota    | Cressida | 2005  |
  | Hyundai   | accent   | 2005  |
  | Fiat      | 128      | 2005  |
  | Fiat      | 128      | 2013  |

  Scenario: Search by brand

    Given I am on the homepage
    When I follow "Search"
    And I fill in "Brand" with "Toyota"
    And I press "Search"
    Then I should see "Lexus" before "Cressida"

  Scenario: Search by year

    Given I am on the homepage
    When I follow "Search"
    And I fill in "Year" with "2005"
    And I press "Search"
    Then I should see "Toyota" before "Hyundai"
    And I should see "Hyundai" before "Fiat"


Scenario: Search by carmodel

    Given I am on the homepage
    When I follow "Search"
    And I fill in "Cmodel" with "128"
    And I press "Search"
    Then I should see "2005" before "2013"


