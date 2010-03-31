Factory.define :user do |user|
  user.sequence(:email) { |n| "foo#{n}@example.com" }
  user.sequence(:username) { |n| "username#{n}" }
  user.password "foobar"
  user.password_confirmation { |u| u.password }
end

