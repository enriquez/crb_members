Feature: Visitor Account Creation	
	As a visitor
	In order to become a Columbus Ruby Brigade (CRB) member of the website
	I want to be able to sign up, login, and manage my account
	
	Scenario: sign up process
		Given I am on the sign up page
		When I fill in the sign up form
		And I press "Sign Up"
		Then I should see "Welcome to CRB! Happy coding!"
		
	Scenario: sign in
		Given I am on the sign in page
    And the following user exists:
      | username | password |
      | cashby   | password |
    When I sign in as "cashby" with password "password"
		Then I should see "You are logged in as cashby"
