Feature: Admin can add items to menu

    As an Admin
    In order to keep my menu updated
    I would like to be able to add items to the menu

    Background:
        Given the following user exists
            | email          | password |
            | admin@mail.com | password |

        And I visit the landing page
        And I click 'manage menu'
        And I click 'add items'

    Scenario: Admin can successfully add an item to his menu
        Given I fill in 'Title' with 'Canapé'
        And I select 'Appetizer' from 'Category'
        And I fill in 'Price' with '8'
        And I click 'Add item to menu'
        Then I should see 'Canapé was successfully added to the menu!'
