FactoryGirl.define do
  factory :user do
  	userid   "moka"
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end