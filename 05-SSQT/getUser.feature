Feature: Retrieving user information via API call

  Scenario: Client performs API call to retrieve user with email "user@example.com"
    Given the client performs an API call to retrieve user with email "user@example.com"
    When the API call is successful
    Then the client should receive the following information:
    
      | information    | data_type |
      | accountId      | String    |
      | userId         | String    |
      | firstName      | String    |
      | lastName       | String    |
      | referredByCodes| String    |
