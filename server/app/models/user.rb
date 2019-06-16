class User < ApplicationRecord
  validates_presence_of :first_name, :last_name
  validates :email, uniqueness: true, format: { :with => URI::MailTo::EMAIL_REGEXP }
end
