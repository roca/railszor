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
		When I go to a journal entry page for "2010-10-10"
		Then I should see "Sunday" within "h1"
		And the record should belong to the current user for "2010-10-10"

	Scenario: View a prepopulated entry
		Given an existing journal entry record with the following data:
			|notes|A close shave|
			|rating|5|
			|date|2010-10-10|
		When I go to a journal entry page for "2010-10-10"
		Then the "Notes" field should contain "A close shave"
		And the "5" checkbox should be checked
		And the "4" checkbox should not be checked

	Scenario: Enter new information in the form
		Given I go to a journal entry page for "2010-10-10"
		When I fill in "Sharp as the blues" for "Notes"
		And I choose "3"
		Then show me the page
		And I press "Save"