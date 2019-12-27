Feature: SignIN
  Scenario: Verify error message on sigin in with no credentials
    Given I go to the sign in page successfully
    And I tap on element "signInButton"
    Then I assert for identifiers:
    |There were errors in your submission|
