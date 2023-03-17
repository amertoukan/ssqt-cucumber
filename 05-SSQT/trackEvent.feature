Feature: Giving a $25 gift card to the user and the referrer

  Scenario: User referred by "test@example.com" makes a purchase above 400 USD
    Given the user is logged in
    And the user was referred by "test@example.com"
    And the user is making a purchase above 400 USD
    When the purchase is completed
    Then the user should receive a $25 gift card
    And the referrer with the email "test@example.com" should receive a $25 gift card
