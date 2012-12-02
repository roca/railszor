Then /^the calendar should show the current month$/ do
  month_name = Date.today.strftime("%B")
  step %Q{I should see "#{month_name}" within "th.monthName"}
end
