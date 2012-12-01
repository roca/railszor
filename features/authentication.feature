Feature: Authentication
	As one who shaves
	I want to create and use an account on the website
	In order to keep a journal of my shaving activities.

	Scenario: Signup
		Given I am on the sign_up page
		When I fill in the following:
			|Email						|Bertram@gmail.com|
			|user_password  			|123456           |
			|user_password_confirmation	|123456           |
		And I press "Sign up"
		Then I should see "Welcome! You have signed up successfully."

	Scenario: Login
		Given a valid user
		When I go to the login page