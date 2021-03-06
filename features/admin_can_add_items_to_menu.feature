Feature: Admin can add items to menu

    As an Admin
    In order to keep my menu updated
    I would like to be able to add items to the menu

    Background:
        Given the following user exists
            | email          | password | role  |
            | admin@mail.com | password | admin |

        And I am logged in as 'admin@mail.com'
        And I click 'Admin page'
        And I click 'Add items to menu'

    Scenario: Admin can successfully add an item to his menu
        Given I fill in 'Title' with 'Vodka'
        And I fill in 'Category' with 'Drink'
        And I fill in 'Description' with 'Russian vodka'
        And I fill in 'Price' with '10'
        And I click 'Add item to menu'
        Then I should see 'Vodka was successfully added to the menu!'

    Scenario: Admin can not add an item to his menu
        Given I click 'Add item to menu'
        Then I should see 'Please make sure you have filled in all fields.'
