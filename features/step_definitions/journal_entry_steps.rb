Then /^the calendar should show the current month$/ do
  month_name = Date.today.strftime("%B")
  step %Q{I should see "#{month_name}" within "th.monthName"}
end

Then /^the page should have links to journal_entries for all days of month$/ do
	month = Date.today.month
	days_in_month = Time.days_in_month month
  
   (1..days_in_month).each do |d|
   	 assert  page.has_link?("#{d}",{:href => "/journal_entries/#{Date.today.strftime("%Y-%m-")}#{sprintf("%02d",d)}"})
    end
end

