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

	def update
		@journal_entry  = current_user.journal_entries.find_by_date(params[:id])
		if @journal_entry.update_attributes(params[:journal_entry])
			flash[:notice] = "Your Journal Entry was saved"
			redirect_to journal_entry_url(@journal_entry)
		end
	end
end