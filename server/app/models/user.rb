class User < ApplicationRecord
  validates_presence_of :first_name, :last_name
  validates :email, uniqueness: true, format: { :with => URI::MailTo::EMAIL_REGEXP }

  def self.serialized_users
    self.all.map do |user|
      {
        id:         user.id,
        name:       user.full_name,
      }
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
