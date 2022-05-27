Feature: Increment Counter

  As the good shepherd
  I want to be able to count my sheep
  So that I notice if one is missing

  Scenario: Counter increases when the button is pressed
    Given the counter is set to "0"
    When I tap the "increment" button 10 times
    Then I expect the "counter" to be "10"