Then /^the calendar should show the current month$/ do
  month_name = Date.today.strftime("%B")
  step %Q{I should see "#{month_name}" within "th.monthName"}
end

Then /^the page should have links to (.+) for all days of the month$/ do |url|
	month = Date.today.month
	days_in_month = Time.days_in_month month
	url.gsub!(/[\'\"]/,'')

  
   (1..days_in_month).each do |d|
   	 assert  page.has_link?("#{d}",{:href => "/#{url}/#{Date.today.strftime("%Y-%m-")}#{sprintf("%02d",d)}"})
    end
end

