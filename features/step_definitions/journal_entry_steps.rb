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


Then /^the record should belong to the current user for "(.*?)"$/ do |date_string|
  journal_entry = @user.journal_entries.find_by_date(date_string)
  journal_entry.should_not be_nil
end

Given /^an existing journal entry record with the following data:$/ do |table|
  @journal_entry = @user.journal_entries.create!(table.rows_hash)
end

Then /^the user's journal entry for "(.*?)" should have the following values:$/ do |date_string, table|
  journal_entry = @user.journal_entries.find_by_date(date_string)
  table.hashes.each do |hash|
    journal_entry.send(hash['key']).should == hash['value'].send(hash['transform'])
  end
end

