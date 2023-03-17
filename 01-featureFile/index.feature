Feature: The create account page should have verification on all the fields 
    Scenario: Error message should become visible when I try to submit the account creation form without a name
        Given I am on the site homepage
        When I click on "sign in link" on the "Home" page
            And I click on "register" on the "Sign In" Page 
            And I enter "glyptic.test@example.com" into the "email" field on the "Create Account" Page
            And I enter "Tropical1" into the "password" field on the "Create Account" Page 
            And I enter "Tropical1" into the "confirm password" field on the "Create Account" Page
            And I click on "submit" on the "Create Account" Page 
        Then the "missing name error" on the "Create Account" Page should be visible 

    Scenario: Error message should become visible when I try to submit the account creation form without an email 
        Given I am on the site homepage
        When I click on "sign in link" on the "Home" Page 
            And I click on "register" on the "Sign In" Page 
            And I click enter "glyptic test" into the "name field" on the "Create Account" Page
            And I enter "Tropical1" into the "confirm password" field on the "Create Account" Page
            And I click on "submit" on the "Create Account" Page 
        Then the "missing email error" on the "Create Account" Page should be visible 
