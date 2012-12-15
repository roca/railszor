# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :journal_entry do
    notes "MyText"
    rating 1
    user_id 1
    date "2012-12-15"
  end
end
