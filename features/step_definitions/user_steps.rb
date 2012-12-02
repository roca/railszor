Given /^a valid user$/ do
  @user = FactoryGirl.create :user
end

Given /^a logged in user$/ do
  step "a valid user"
  visit login_url
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Sign in"
end
