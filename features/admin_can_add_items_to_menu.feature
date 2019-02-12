Feature: Admin can add items to menu

    As an Admin
    In order to keep my menu updated
    I would like to be able to add items to the menu

    Background:
        Given the following user exists
            | email          | password | role  |
            | admin@mail.com | password | admin |

        And I am logged in as 'admin@mail.com'
        And I click 'Manage menu'
        And I click 'Add items to menu'

    Scenario: Admin can successfully add an item to his menu
        Given I fill in 'Title' with 'Canapé'
        And I select 'Appetizer' from 'Category'
        And I fill in 'Price' with '8'
        And I click 'Add item to menu'
        Then I should see 'Canapé was successfully added to the menu!'
