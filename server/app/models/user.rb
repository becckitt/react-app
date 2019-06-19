class User < ApplicationRecord
  include ReferralHelper
  validates_presence_of :first_name, :last_name
  validates :email, uniqueness: true, format: { :with => URI::MailTo::EMAIL_REGEXP }
  after_create :save_referral_code

  def self.serialized_users
    self.all.map do |user|
      {
        id:   user.id,
        name: user.full_name,
      }
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def save_referral_code
    code = generate_referral_code(id)
    update_attribute(:referral_code, code)
  end
end
