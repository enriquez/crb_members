Feature: visitor logs in and out
  As a visitor
  In order to authenticate with the site
  I want to be able to log in and out

  Background:
    Given the following user exists:
      | username | password |
      | cashby   | password |

	Scenario: login
    When I sign in as "cashby" with password "password"
		Then I should see "You are logged in as cashby"

  Scenario: logout
    Given I sign in as "cashby" with password "password"
    When I am on the logout page
    Then I should see "Logout successful!"


