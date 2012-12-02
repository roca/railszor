Feature: Managing journal entries
	As one who shaves
	I want to record the quality of my experience
	So T can improve my skills with a razor

	Scenario: View the calendar
		Given a logged in user
		When I go to the home page
		Then the calendar should show the current month