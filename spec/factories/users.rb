FactoryGirl.define do
  factory :user do
    name "Joe"
    last_name "Bloggs"
    sequence(:email) { |n| "joebloggs#{n}@example.com" }
    password "password123"
  end

end
