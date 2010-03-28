Feature: signs up
  As a visitor
  In order to become a member of the site
  I want to be able to sign up

	Scenario: sign up process
		Given I am on the sign up page
		When I fill in the sign up form
		And I press "Sign Up"
		Then I should see "Welcome to CRB! Happy coding!"

