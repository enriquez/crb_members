Feature: Visitor views members
  As a visitor
  In order to view members
  I want to see a list of profiles

  Scenario: View listing
    Given the following users exists:
      | username    | 
      | felixflores |
      | enriquez    |
      | objo        |
    And I am on the members page
    Then I should see "felixflores"
    And I should see "enriquez"
    And I should see "objo"

