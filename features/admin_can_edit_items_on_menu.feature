Feature: Admin can edit item on menu

    As an Admin
    In order to keep my menu up to date with the restaurant
    I would like to be able to update my menu

    Background:
        Given the following item exists
            | title | category | price |
            | Wine  | Drinks   | 8     |

        And the following user exists
            | email          | password | role  |
            | admin@mail.com | password | admin |

        And I am logged in as 'admin@mail.com'
        And I visit the landing page

    Scenario: Admin can successfully edit an item
        Given I click 'Edit Wine'
        Then show me the page
        And I fill in 'Title' with 'Wine'
        And I fill in 'Category' with 'Drinks'
        And I fill in 'Price' with '12'
        And I click 'Update item'
        Then I should see 'Wine was successfully updated.'