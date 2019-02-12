Feature: Admin can delete items from menu

    As an Admin
    In order to keep my menu up to date
    I would like to be able to delete items from the menu

    Background:
        Given the following user exists
            | email          | password | role  |
            | admin@mail.com | password | admin |

        And the following item exists
            | title | category | price |
            | Wine  | drinks   | 8     |

        And I am logged in as 'admin@mail.com'

    Scenario: Admin can successfully delete an item from his menu
        Given I am on the menu page
        And I click on 'Delete'
        Then I should see 'Wine was successfully deleted from the menu.'