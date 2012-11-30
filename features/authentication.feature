Feature: Authentication
	As one who shaves
	I want to create and use an account on the website
	In order to keep a journal of my shaving activities.

	Scenario: Signup
		Given I am on the sign_up page
		When I fill in "Bertram@gmail.com" for "Email"
		And I fill in "123456" for "user_password"
		And I fill in "123456" for "user_password_confirmation"
		And I press "Sign up"
		Then I should see "Welcome! You have signed up successfully."