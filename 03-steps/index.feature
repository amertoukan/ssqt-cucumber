Feature: Amazon search results should contain all required data 
    Scenario Outline: Description of scenario outline 
        Given I am on the site homepage 
        When search for "search_string" 
        Then each result should have the following information 
            | information       | data_type    | 
            | title             | string       | 
            | price             | currency     | 
            | number of ratings | integer      | 
            | rating value      | string       | 
            | item image        | image        | 

        Examples: 
            | search_string | 
            | cucumber book | 
            | java book     |
            | cucumber      | 
            | java          | 