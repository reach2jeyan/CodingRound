Feature: Login

  Scenario: Verify the user is able to search the desitnations
    When I tap on element "OneWay"
    And I enter "Bangalore" in the From field
    And I enter "Delhi" in the To field
    Then I wait for sometime
    And I choose a date after the current date
    Then I choose "2" adults travelling
    When I tap on element "SearchBtn"
    Then I print out the search summary

