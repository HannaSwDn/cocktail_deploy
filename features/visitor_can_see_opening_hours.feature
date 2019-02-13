Feature: Visitor can see opening hours

    As a Visitor
    In order to see when I can go to the restaurant
    I would like to see their opening hours

    Scenario: Visitor sees opening hours in the navigation bar
        Given it is monday today
        And I visit the landing page
        Then I should see 'Opening hours today:'
        And I should see '17:00 - 23:00'