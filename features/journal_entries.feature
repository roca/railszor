Feature: Managing journal entries
	As one who shaves
	I want to record the quality of my experience
	In in order to improve my skills with a razor

	Background:
		Given a logged in user

	Scenario: View the calendar
		When I go to the home page
		Then the calendar should show the current month
		And the page should have links to "journal_entries" for all days of the month


	Scenario: View a single entry
		When I go to a journal entry page