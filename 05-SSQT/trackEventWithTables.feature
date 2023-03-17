Feature: Giving a $25 gift card to the user and the referrer

  Scenario Outline: User referred by "<referrer_email>" with email "<user_email>" makes a purchase above "<purchase_amount>" USD
    Given the user is logged in
    And the user with email "<user_email>" was referred by "<referrer_email>"
    And the user is making a purchase above "<purchase_amount>" USD
    When the purchase is completed
    Then the user with email "<user_email>" should receive a "<user_gift_card_amount>" gift card
    And the referrer with email "<referrer_email>" should receive a "<referrer_gift_card_amount>" gift card

    Examples:
      | referrer_email     | user_email        | purchase_amount | user_gift_card_amount | referrer_gift_card_amount |
      | test1@example.com  | user1@example.com | 500             | 25                    | 25                        |
      | test2@example.com  | user2@example.com | 700             | 50                    | 50                        |
      | test3@example.com  | user3@example.com | 1000            | 75                    | 75                        |
