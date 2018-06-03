Feature: Hotel Booking
  Scenario: Verify the user is able to book the hotel
    Given I land on hotels tab successfully
    Then I enter "Indiranagar, Bangalore" locality in the search field
    When I choose "1 room, 2 adults" in the guest field
    Then I tap on element "SearchHotelsButton"