FactoryBot.define do
  factory :user do
    first_name { 'firstName' }
    last_name { 'lastName' }
    email { 'email@gmail.com' }
    referral_code { '8cb9b3' }
  end
end
