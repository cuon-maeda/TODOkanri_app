FactoryBot.define do
  factory :task do
    sequence(:name) { |n| "TEST_NAME#{n}"}
    sequence(:user) { |n| "TEST_user#{n}"}
    status { "done" }
  end
end
