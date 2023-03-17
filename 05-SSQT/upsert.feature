Feature: Upserting to SaaSquatch with attribution linked to referrer

  Scenario: User signs up with _saasquatch cookie available
    Given the user is on the sign-up page
    And the _saasquatch cookie is available
    When the user submits the sign-up form with valid information
    Then an upsert to SaaSquatch should occur
    And the upsert should be linked to the referrer found in the _saasquatch cookie

  Scenario: User signs up without _saasquatch cookie available
    Given the user is on the sign-up page
    And the _saasquatch cookie is not available
    When the user submits the sign-up form with valid information
    Then an upsert to SaaSquatch should not occur