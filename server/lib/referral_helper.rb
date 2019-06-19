module ReferralHelper
  def generate_referral_code(id)
    # would generate a better coupon code here w/ more time
    # maybe after this could map each number to the alphabet
    # and randomly capitalize so it looks like 'aHyjUki'
    # could also just use a sha hash like github uses for commits
    id + hashing_key
  end

  def decode_referral_code(code)
    id - hashing_key
  end

  def referral_link
    # would replace this with a real link
    "http://localhost:3001/x/#{referral_code}"
  end

  private

  def hashing_key
    12345
  end
end