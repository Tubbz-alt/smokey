Feature: Service Manual

  Background:
    Given I am testing through the full stack
    And I force a varnish cache miss

  @normal
  Scenario: check Service Manual
    When I visit "/service-manual"
    Then I should see "Service Manual"

  @normal
  Scenario: Visiting a topic page
    When I visit "/service-manual/agile-delivery"
    Then I should see "Agile delivery"

  @normal
  Scenario: Visiting a guide page
    When I visit "/service-manual/agile-delivery/writing-user-stories"
    Then I should see "Writing user stories"

  @normal
  Scenario: Visiting the service standard page
    When I visit "/service-manual/service-standard"
    Then I should see "Digital Service Standard"
