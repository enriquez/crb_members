Feature: User creates a project
  As a user
  In order to show my works
  I want to create a project

  Background:
    Given I am a logged in user

  Scenario: create a new project
    Given I am on the new project page for user "cashby"
    When I fill in "Title" with "My Project"
    And I fill in "URL" with "http://github.com"
    And I fill in "Description" with "It's an awesome thing"
    And I press "Create"
    Then I should see "My Project"
    And I should be on the projects page for user "cashby"

