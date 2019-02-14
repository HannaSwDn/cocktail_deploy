Feature: Visitor can see menu

    As a Visitor
    In order to decide what food I want
    I would like to see a menu on the website

    Background:
        Given the following items exists
            | title | category | description     | price |
            | Wine  | Drink    | very good Wine  | 8     |
            | Pasta | Main     | very good Pasta | 12    |

        And I visit the landing page

    Scenario: Visitor sees the menu
        Given I click on list item 'menu'
        Then I wait 2 seconds
        Then I should see 'Pasta'
        And I should see '12$'
        And I should see 'Wine'
        And I should see '8$'
        