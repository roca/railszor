module JournalEntriesHelper

	def render_calendar_cell(date)
		link_to(date.mday, journal_entry_path(date))
   end

   def render_calendar(year,month)
   		calendar(:year => year, :month => month, :first_day_of_week => 1) do |d|
   			render_calendar_cell(d)
   		end
   end
end