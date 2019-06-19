require 'digest'

module ReferralHelper
  def generate_referral_code(id)
    # considered using MD5 but it looks long for
    # a referral code. Went with SecureRandom instead
    # Digest::MD5.hexdigest id.to_s
    SecureRandom.hex(3)
  end

  def referral_link
    # would replace this with a real link
    "http://localhost:3001/x/#{referral_code}"
  end
end