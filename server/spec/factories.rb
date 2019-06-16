FactoryBot.define do
  factory :user do
    first_name { 'firstName' }
    last_name { 'lastName' }
    email { 'email@gmail.com' }
  end
end