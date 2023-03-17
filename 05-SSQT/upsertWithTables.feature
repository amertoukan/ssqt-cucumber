Feature: Upserting to SaaSquatch with attribution linked to referrer

  Scenario Outline: User signs up and upserts to SaaSquatch if _saasquatch cookie is available
    Given the user is on the sign-up page
    And the _saasquatch cookie is "<cookie_availability>"
    When the user submits the sign-up form with valid information
    Then an upsert to SaaSquatch should "<upsert_expectation>"
    And the upsert should be linked to the referrer found in the _saasquatch cookie

    Examples:
      | cookie_availability | upsert_expectation |
      | available           | occur              |
      | not available       | not occur          |
