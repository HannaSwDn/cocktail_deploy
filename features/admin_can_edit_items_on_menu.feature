Feature: Admin can edit item on menu

    As an Admin
    In order to keep my menu up to date with the restaurant
    I would like to be able to update my menu

    Background:
        Given the following items exists
            | title | category | price |
            | Vodka | Cocktail | 8     |

        And the following user exists
            | email          | password | role  |
            | admin@mail.com | password | admin |

        And I am logged in as 'admin@mail.com'
        And I visit the landing page
        And I click on list item 'Menu'
        Then show me the page

    Scenario: Admin can successfully edit an item
        Given I click 'Edit'
        And I fill in 'Title' with 'Vodka'
        And I fill in 'Category' with 'Drink'
        And I fill in 'Description' with 'Russian vodka'
        And I fill in 'Price' with '12'
        And I click 'Update item'
        Then I should see 'Vodka was successfully updated.'
