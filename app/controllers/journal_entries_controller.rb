class JournalEntriesController < ApplicationController
	def index
		date = Date.today
		@month = date.month
		@year = date.year
	end
end