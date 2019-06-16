require 'rails_helper'

RSpec.describe User, type: :model do
  describe "user model attributes" do
    user = User.new(first_name: "first", last_name: "last", email: "email@gmail.com")

    it "is valid with valid attributes" do
      expect(user).to be_valid
    end

    it "has a default payment value" do
      expect(user.payment).to eq('xxxx xxxx xxxx 4242')
    end

    it "is invalid with a non-unique email" do
      test_user = User.create!(first_name: "name1", last_name: "name2", email: "email@gmail.com")
      user_with_duplicate_email = User.new(first_name: "name1", last_name: "name2", email: "email@gmail.com")
      expect(user_with_duplicate_email).to_not be_valid
    end

    it "is invalid with an invalid email" do
      user_with_invalid_email = User.new(first_name: "first", last_name: "last", email: "thisisntanemail.com")
      expect(user_with_invalid_email).to_not be_valid
    end

    it "is invalid without a first and last name" do
      user_with_missing_names = User.new(first_name: nil, last_name: nil, email: "e@mail.com")
      expect(user_with_missing_names).to_not be_valid
    end
  end
end
