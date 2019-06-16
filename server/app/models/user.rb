class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      uniqueness: true, format: { :with => URI::MailTo::EMAIL_REGEXP }
end
