Given /^I am a logged in user$/ do
  Factory(:user, :username => "cashby", :password => "password")
  And %{I sign in as "cashby" with password "password"}
end

