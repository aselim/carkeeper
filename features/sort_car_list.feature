Feature: display list of cars sorted by different criteria
 
  As a person looking for a used car
  So that I can quickly browse cars based on my preferences
  I want to see cars sorted by brand

Background: cars have been added to database
  
  Given the following cars exist:
  | brand     | carmodel | year  |
  | Toyota    | Lexus    | 2000  |
  | Honda     | Civic    | 2005  |
  | Fiat      | 128      | 1995  |

And I am on the home page

Scenario: sort cars by brand
When I follow "Brand"
Then I should see "Fiat" before "Honda"

Scenario: sort cars by carmodel
When I follow "Car Model"
Then I should see "128" before "Civic"

Scenario: sort cars by year
When I follow "Year"
Then I should see "1995" before "2000"

