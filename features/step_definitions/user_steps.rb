When /^I fill in the sign up form$/ do
  fill_in "Username", :with => "cashby"
  fill_in "E-mail", :with => "awesome@example.com"
  fill_in "Password", :with => "password"
  fill_in "Password Confirmation", :with => "password"
end

When /^I sign in as "([^\"]*)" with password "([^\"]*)"$/ do |username, password|
  visit login_path
  fill_in "Username", :with => username
  fill_in "Password", :with => password
  click_button "Sign In"
end

