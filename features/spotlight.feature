Feature: Spotlight

  @high
  Scenario: Performance Platform homepage is available
    Given I am testing through the full stack
    And I force a varnish cache miss
    And I am benchmarking
    When I visit "/performance"
    Then I should get a 200 status code
    And I should see "Our performance"
    And the elapsed time should be less than 2 seconds

  @high
  Scenario: Spotlight application is up and running
    Given I am testing through the full stack
    And I force a varnish cache miss
    And I am benchmarking
    When I visit "/performance/carers-allowance"
    Then I should get a 200 status code
    And I should see "Carer's Allowance"
    And the elapsed time should be less than 2 seconds
