class User < ApplicationRecord
  validates_presence_of :first_name, :last_name
  validates :email, uniqueness: true, format: { :with => URI::MailTo::EMAIL_REGEXP }

  def self.serialized_users
    self.all.map do |user|
      {
        first_name: user.first_name,
        last_name:  user.last_name,
        email:      user.email,
        payment:    user.payment
      }
    end
  end
end
