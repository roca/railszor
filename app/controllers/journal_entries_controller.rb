class JournalEntriesController < ApplicationController
	def index
		date = Date.today
		@month = date.month
		@year = date.year
	end
	def show
		@current_user = current_user
		@journal_entry = @current_user.journal_entries.find_or_create_by_date(params[:id].to_date)

	end
end