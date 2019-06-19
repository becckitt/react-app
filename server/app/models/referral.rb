class Referral < ApplicationRecord
  belongs_to :referrer, :class_name => "User", :foreign_key => "referrer_id"
  belongs_to :referred, :class_name => "User", :foreign_key => "referred_id"

  def status(count)
    if count > 75
      "platinum"
    elsif count > 50
      "gold"
    else
      "silver"
    end
  end
end
